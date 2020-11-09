class TasksController < ApplicationController
    def index
        @tasks = Tasks.all
    end
    def show

    end
end