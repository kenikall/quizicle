get '/teachers/new' do
  erb :'teacher/new'
end

# login teacher
post '/teachers' do
  # @user = Teacher.find_by_email(params[:email])
  # p params
  # p @user
  if @user.authenticate(params)
    session[:id]=@user.id
    session[:login_type] = "teacher"
    redirect "/teacher/#{@user.id}"
  end
end

get 'teachers/:id' do
  @user = Teacher.find(params[:id])
  erb :'teacher/show'
end
