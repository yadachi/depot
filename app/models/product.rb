class Product < ActiveRecord::Base
  has_many :line_items
  validates :title, :description, :image_url, Presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
	with:  /\.(gif|jpg|png)\z/i,
	message: 'must be gif, jpg or png extention'}
  validates :title, length: { minimum: 10 }

  before_destroy :ensure_not_referenced_by_any_line_item

  private
  def ensure_not_referenced_by_any_line_item
  	if line_items.empty?
  	  return true
  	else
  	  errors.add(:base, 'items in your cart')
  	  return false
  	end
  end
end
