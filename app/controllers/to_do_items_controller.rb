class ToDoItemsController < ApplicationController
  def complete_task
    respond_to do |format|
      format.json {render :json => {:ok => true}}
    end
  end
end
