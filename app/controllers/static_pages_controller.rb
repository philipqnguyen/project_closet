class StaticPagesController < ApplicationController
	def front_page
	end

	def user_panel
		@items = current_user.items.all
	end

  def command_center
    if !current_user.admin
      redirect_to root_path
      flash[:notice] = "You are not authorized to go there."
    end
    @users = User.all
  end
end
