class UsersController < ApplicationController
  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash[:notice] = "Successfully deleted User."
      redirect_to command_center_path
    end
  end
end
