get '/users/new' do
  erb :'users/new'
end

get '/users/:id' do
  if mine?(params[:id])
    erb :'users/show'
  else
    @errors = ["Please log in to see this page"]
    erb :'sessions/new'
  end
end

post '/users' do
  create_user
end
