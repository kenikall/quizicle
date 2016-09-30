get '/' do
  erb :"/index"
end

get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  session[:id] = nil
  erb :"/index"
end
