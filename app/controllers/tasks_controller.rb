class TasksController < ApplicationController
  before_action :authenticate_user!
  def index
    @tasks = Task.all
  end

  def new
    @task_form = TaskForm.new
  end

  def create
    @task_form = TaskForm.new(task_params)
    if @task_form.valid?
      @task_form.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  
  
    private

    def task_params
      params.require(:task_form).permit(:title, :task_text, :memo, :due_date, :image).merge(user_id: current_user.id)
    end
end
