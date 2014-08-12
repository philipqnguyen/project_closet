class StaticPagesController < ApplicationController
	def front_page
	end

	def user_panel
		@items = current_user.items.all
	end

  def command_center
    redirect_to root_path if !current_user.admin
    @users = User.all
  end
end
