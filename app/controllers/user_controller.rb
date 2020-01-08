class UserController < Sinatra::Base

    set :views, 'app/views/user' 
    set :method_override, true

    get '/users' do
        @users = User.all
        erb :index
    end

    get '/users/new' do
        erb :new
    end

    post '/users' do
        @n_user = User.create(params)
        redirect '/users'
    end

    get '/users/:id' do
        @user = User.find(params[:id])
        erb :show
    end
        
        

end