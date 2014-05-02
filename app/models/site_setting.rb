class SiteSetting < ActiveRecord::Base

	def self.title
		find(1).title
	end

	def self.subtitle
		find(1).subtitle
	end
end
