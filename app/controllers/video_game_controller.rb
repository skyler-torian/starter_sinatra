class VideoGameController < Sinatra::Base

    set :views, 'app/views/video_games'
    set :method_override, true

    get '/video_games' do
        @video_games = VideoGame.all
        erb :index
    end

end