class BoardsController < ApplicationController
    def index
        @board = Board.first
    end

    def show
    end
end