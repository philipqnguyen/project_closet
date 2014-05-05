class Item < ActiveRecord::Base
	belongs_to :user

	has_attachment :photo

	validates :user_id, presence: true
	validates :item_name, presence: true
	validates :quantity, presence: true


end
