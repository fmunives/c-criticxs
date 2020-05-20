class GamesController < ApplicationController
    def index
        @games = Game.all
        render json: @games
    end
    def show
        @game = Game.find(params[:id])
        render json: @game
    end
    def create
        @game = Game.new(game_params)
        if @game.save
            render json: @game
        else
            render json: @game.errors
        end
    end

    def destroy
        @game = Game.find(params[:id])
        @game.destroy
        # head :no_content
        render json: {status: 'Successfully destroyed', data: @game}, status: :ok
    end

    private
    def game_params
        params.require(:game).permit(:name, :gender, :price, :release_date, :company_id)
    end
end
