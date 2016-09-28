get '/quizzes/show' do
  @quiz = Quiz.create(num_questions: 10, subject_id: Subject.find_by(name: "math").id)
  redirect "/quizzes/#{@quiz.id}"
end

post '/quizzes/guest/:id' do
  @quiz= Quiz.find(params[:id])
  @quiz.get_response(params["response"].to_i)

  redirect "/quizzes/guest/#{@quiz.id}"
end

get '/quizzes/guest/:id' do
  @quiz= Quiz.find(params[:id])
  erb :'quizzes/guest'
end

get '/quizzes/:id' do
  @quiz = Quiz.find(params[:id])
  erb :"quizzes/show"
end

post '/quizzes/:id' do
  @quiz = Quiz.find(params[:id])
  @quiz.get_response(params["response"].to_i)
  @quiz.grade_quiz
  if request.xhr?
    if @quiz.problems.count <= @quiz.num_questions
      erb :"partials/_question_partial", layout: false
    else
      erb :"partials/_grade_partial",layout: false
    end
  else
    if @quiz.problems.count <= @quiz.num_questions
      erb :"quizzes/show"
    else
      redirect "/quizzes/guest/#{@quiz.id}"
    end
  end
end

