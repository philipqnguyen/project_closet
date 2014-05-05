class StaticPagesController < ApplicationController
	def front_page
	end

	def user_panel
		@items = current_user.items.all
	end
end
