class Item < ActiveRecord::Base
	belongs_to :user

	validates :user_id, presence: true
	validates :item_name, presence: true
	validates :quantity, presence: true
end
