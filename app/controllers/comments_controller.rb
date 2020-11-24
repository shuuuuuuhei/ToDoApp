class CommentsController < ApplicationController
    
    def index
        @comments = Comment.all
    end
    def new
        task = Task.find(params[:task_id])
        @comment = task.comments.build
    end

    def create
        task = Task.find(params[:task_id])
        @comment = task.comments.build(comment_params)
        if @comment.save!
            redirect_to task_path(task), notice: 'コメントを追加しました'
        else
            flash.now[:error] = '保存に失敗しました'
            render :new
        end
    end
    def show
        @comment = Comment.find(params[:id])
    end


    private
    def comment_params
        params.require(:comment).permit(:content, :eyecatch).merge(user_id: current_user.id)
    end
end