class TasksController < ApplicationController
    def index
        render json: Task.all
    end

    def show
        render json: task
    end
    
    def create
        task = Task.create(task_params)
        render json: task
    end
    
    def destroy
        Task.destroy(params[:id])
    end
    
    def update
        task = Task.find(params[:id])
        task.update_attributes(task_params)
        render json: task
    end
    
    private
    def task_params
        params.require(:task).permit(:action, :party_id, :guest_id)
    end
end
