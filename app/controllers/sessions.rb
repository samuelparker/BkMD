get '/sessions' do
  "logged in"
end

post '/sessions' do
  @user = User.find_by_email(params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:id] = @user.id
      redirect "/users/#{@user.id}"
    else
      @errors = ["Email and or Password not found."]
      erb :"users/new"
    end
end

delete '/sessions/:id' do
  session[:id] = nil
  redirect '/'
end