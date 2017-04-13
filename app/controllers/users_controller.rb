get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])
  p @user.errors
  if @user.save
    puts "I GOT IN"
    login_user
    redirect "/users/#{@user.id}"
  else
    p @user.errors
    @user.errors.add(:Password, "must be atleast 6 characters") if params[:user][:password].length < 6
    @errors = @user.errors.full_messages
    p @errors
    erb :"/users/new"
  end
end

get '/users/:user_id' do
  if current_user && current_user.id == session[:user_id]
    erb :"/users/show"
  else
    "WHERE U GOING HOMEBOY"
  end
end