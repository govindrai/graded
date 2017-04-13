# show the login form
get '/sessions/new' do
  erb :"session/new"
end
# create a new session and login the user
post '/sessions' do

end

# destroy the session and logout the user
delete '/sessions' do

end