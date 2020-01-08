class VideoGameController < Sinatra::Base

    set :views, 'app/views/video_games'
    set :method_override, true

    get '/video_games' do
        erb :index
    end

end