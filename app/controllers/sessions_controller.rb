get 'sessions/new' do
  erb :'sessions/new'
end

get '/sessions/:id' do
  session.clear
  redirect '/quizzes/new'
end


