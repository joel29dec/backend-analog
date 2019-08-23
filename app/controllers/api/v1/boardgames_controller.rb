class Api::V1::BoardgamesController < ApplicationController
    def index
        boardgames = Boardgame.all
        render json: boardgames
    end

    def show
        boardgame = Boardgame.find_by(id: params[:id])
        render json: boardgame
    end

end
