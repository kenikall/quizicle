#login student
get '/student' do
  @user = Student.find_by_email(params[:email])
  if @user && @user.password == params[:password]
    session[:id]=@user.id
    session[:login_type]="student"
    redirect "/students/#{@user.id}"
  else
    erb :"student"
  end
end
