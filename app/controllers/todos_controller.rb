class TodosController < ApplicationController
  def index
    @todos = Todo.where(user_id: current_user.id).order("limit_time")
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])
    if @todo.update(todo_params)
      redirect_to root_path
    else
    render :edit
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    if @todo.destroy
      redirect_to root_path
  end
 end

  private
  def todo_params
    params.require(:todo).permit(:task, :state_id, :limit_time).merge(user_id: current_user.id)
  end
end

