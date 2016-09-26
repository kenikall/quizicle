get '/teachers/new' do
  erb :'teacher/new'
end

# login teacher
post '/teachers' do
  @user = Teacher.find_by_email(params[:email])
  # p params
  # p @user
  # if @user.authenticate(params)
    session[:id]=@user.id
    session[:login_type] = "teacher"
    redirect "/teachers/#{@user.id}"
  # end
end

# post '/teachers' do
#   @user = Teacher.new(params)
#   if @user.save
#     redirect "/teachers/#{@user.id}"
#   else
#     erb :'teacher/new'
# end




get '/teachers/:id' do
  @user = Teacher.find(params[:id])
  erb :'teachers/show'
end


post '/sessions/:id' do
  session.clear
  redirect '/quizzes/new'
end
