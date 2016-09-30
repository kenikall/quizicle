
get '/students' do
  @student = Student.find_by_email(params[:email])
  if @student && @student.password == params[:password]
    session[:id]=@student.id
    session[:login_type]="student"
    redirect "/students/#{@student.id}"
  else
    erb :"students/#{@student.id}"
  end
end

get '/students/:id' do
  @student = Student.find(params[:id])
  erb :"/students/show"
  end

post '/students/guest/:id' do
    @quiz = Quiz.find(params[:id])
    @quiz.get_response(params["response"].to_i)

    erb :"students/guest"
  end

get '/students' do
  erb :"/students/new"
end

post '/students' do
  @student = Student.new(params)
  if @student.save
    session[:id] = @student.id
    redirect "/students/#{@student.id}"
  else
    erb :"/students/new"
  end
end
