class Product < ActiveRecord::Base
	validates :title, :description, :image_url, Presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :title, uniqueness: true
	validates :image_url, allow_blank: true, format: {
		with:  /\.(gif|jpg|png)\z/i,
		message: 'must be gif, jpg or png extention'}
	validates :description length: minimum: 10
end
