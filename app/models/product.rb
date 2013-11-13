class Product < ActiveRecord::Base
	validates :title, :description, :image_url, Presence: true
end
