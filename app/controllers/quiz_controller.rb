get '/quizzes/show' do
  @quiz = Quiz.create(num_questions: 10, subject_id: Subject.find_by(name: "math").id)
  redirect "/quizzes/#{@quiz.id}"
end

post '/quizzes/guest/:id' do
  @quiz= Quiz.find(params[:id])
  @quiz.get_response(params["response"].to_i)
  p @quiz.grade_quiz

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


