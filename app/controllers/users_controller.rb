class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @list = []
    
    to_do_list = ToDoList.where(user_id: params[:id])
    @list = ToDoItem.where(to_do_list_id: to_do_list[0][:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end
  
  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
