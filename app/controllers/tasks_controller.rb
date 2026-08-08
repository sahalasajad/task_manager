class TasksController < ApplicationController
  before_action :require_login
  before_action :set_task, only: [ :edit, :update, :destroy, :complete ]

  def index
    @tasks = current_user.tasks.order(created_at: :desc)

    @total_tasks = @tasks.count
    @completed_tasks = @tasks.where(completed: true).count
    @pending_tasks = @tasks.where(completed: false).count

    @upcoming_tasks = @tasks
      .where(completed: false)
      .where.not(due_date: nil)
      .order(due_date: :asc)
      .limit(4)
  end

  def new
    @task = current_user.tasks.build
  end

  def create
    @task = current_user.tasks.build(task_params)

    if @task.save
      redirect_to tasks_path, notice: "Task created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to tasks_path, notice: "Task updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path, notice: "Task deleted successfully."
  end

  def complete
    @task.update(completed: true)
    redirect_to tasks_path, notice: "Task completed!"
  end

  private

  def set_task
    @task = current_user.tasks.find(params[:id])
  end

  def task_params
    params.require(:task).permit(
      :title,
      :description,
      :completed,
      :due_date
    )
  end
end
