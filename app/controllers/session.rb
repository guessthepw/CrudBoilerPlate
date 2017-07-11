get '/login' do
  erb :'sessions/new'
end


post '/login' do
  login
end

get '/logout' do
  session.destroy
  redirect '/login'
end
