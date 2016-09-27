get '/quizzes/show' do
  @quiz = Quiz.create(num_questions: 10, subject_id: Subject.find_by(name: "math").id)
  redirect :"/quizzes/#{@quiz.id}"
end

get '/quizzes/:id' do
  @quiz = Quiz.find(params[:id])
  erb :"quizzes/show"
end

