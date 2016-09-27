helpers do
  def create_user
    if @user.save
      session[:id] = @user.id
      redirect "/users/#{@user.id}"
    else
      @user.errors.full_messages
      erb :'users/new'
    end
  end
end