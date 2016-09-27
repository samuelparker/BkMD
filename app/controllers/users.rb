get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])
  create_user
end

get '/users/:id' do
  if current_user
    @user = User.find(params[:id])
    erb :'users/show'
  else
    redirect '/'
  end
end