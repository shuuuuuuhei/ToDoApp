class TasksController < ApplicationController
    def new
        board = Board.find(params[:board_id])
        @task = board.tasks.build
    end

    def create
        board = Board.find(params[:board_id])
        @task = board.tasks.build(task_params)
        if @task.save
            redirect_to board_path(board), notice: 'タスクを追加しました'
        else
            flash.now[:error] = 'タスクを作成できませんでした'
            render :new
        end
    end

    def show
        @task = Task.find(params[:id])
    end

    def destroy
        board = Board.find(params[:board_id])
        @task = Task.find(params[:id])
        if @task.destroy!
            redirect_to board_path(board), notice: 'タスクを削除しました'
        else
            flash.now[:error] = '削除に失敗しました'
        end
    end

    private
    def task_params
        params.require(:task).permit(:title, :content, :limit).merge(user_id: current_user.id)
    end
end