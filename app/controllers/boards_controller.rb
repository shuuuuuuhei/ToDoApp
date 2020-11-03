class BoardsController < ApplicationController
    before_action :authenticate_user!, only: [:show,:new]
    def index
        @boards = Board.all
    end

    def show
        @board = Board.find(params[:id])
    end

    def new
        @board = Board.new
    end

    def create
        @board = current_user.boards.build(board_params)
        if @board.save
            redirect_to board_path(@board), notice: '保存できたよ'
        else
            flash.now[:error] = '保存に失敗しました'
            render :new
        end
    end

    def edit
        @board = Board.find(params[:id])
    end


    private
    def board_params
        params.require(:board).permit(:title, :description)
    end

end