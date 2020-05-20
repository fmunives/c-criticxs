class GamesController < ApplicationController
    def index
        @games = Game.all
        # render json: {"hello": "hello everybody"}
        render json: @games
    end
end
