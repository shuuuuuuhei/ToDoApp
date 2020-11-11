class TasksController < ApplicationController
    def index
        @tasks = Tasks.all
    end
    def show
        
    end

    def crate
        @task = current_user.tasks.build(task_params)
    end

    private
    def task_params
        params.require(:task).permit(:title, :content, :limit)
    end
end