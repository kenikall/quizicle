#login student
get '/students' do
  @user = Student.find_by_email(params[:email])
  if @user && @user.password == params[:password]
    session[:id]=@user.id
    session[:login_type]="student"
    redirect "/students/#{@user.id}"
  else
    erb :"students"
  end
end
# Remember all those challenges on being restful?
post '/students/guest/:id' do
    @quiz = Quiz.find(params[:id])
    @quiz.get_response(params["response"].to_i)

    erb :"students/guest"
  end
