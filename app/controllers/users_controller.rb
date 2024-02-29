class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # WARNING: The following line is extremely insecure
    # It permits all attributes and bypasses strong parameters
    @user = User.new(params[:user].permit!)
    if @user.save
      redirect_to new_user_path, notice: "User was successfully created."
    else
      render :new
    end
  end

  # Case 4: Use of sensitive whitelisted attributes (used strong parameters)
  # private
  #   def user_params
  #     params.require(:user).permit!
  #   end

  # Case 1: Use of sensitive whitelisted attributes (used strong parameters)
  # private
  #   def user_params
  #     params.require(:user).permit(:name, :email, :account_id)
  #   end
end