class ChangesController < ApplicationController
  def changed

    @todo = Todo.find(params[:id])
    todo = @todo.state_id

    if todo === 4
      todo = 2
      @todo.update_attributes(state_id: todo)
      
    elsif todo ===3
      todo = 4
      @todo.update_attributes(state_id: todo)
    elsif todo ===2
      todo = 3
      @todo.update_attributes(state_id: todo)
    else 
      todo = 2
      @todo.update_attributes(state_id: todo)
    end
   end
end