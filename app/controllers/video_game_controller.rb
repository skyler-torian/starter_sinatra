class VideoGameController < Sinatra::Base

    set :views, 'app/views/video_games'
    set :method_override, true

    get '/video_games' do
        @video_games = VideoGame.all
        erb :index
    end

    get '/video_games/new' do
        erb :new
    end

    post '/video_games' do
        title = params[:title]
        genre = params[:genre]
        user = User.find(params[:user_id])
        @video_games = VideoGame.find_or_create_by(title: title, genre: genre, user: user)

        redirect "/video_games"
    end


end