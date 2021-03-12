require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :"../views/super_hero"
    end

    post '/teams' do
        @team = Team.new(params[:team])

        Hero.clear

        params[:team][:members].each do |hero|
            Hero.new(hero)
        end

        @heros = Hero.all

        erb :"../views/team"
    end
end
