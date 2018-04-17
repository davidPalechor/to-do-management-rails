class ToDoItemsController < ApplicationController
  def complete_task
    respond_to do |format|
      item = ToDoItem.find(params[:id])
      item.completed = params[:completed]
      item.save
      
      format.json {render :json => {:ok => true}}
    end
  end
end
