class UserController < Sinatra::Base

    set :views, 'app/views/user' #if failure, add / before app
    set :method_override, true

    get '/users' do
        @users = User.all
        erb :index
    end

end