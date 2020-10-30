class Park < ApplicationRecord
  validates :name, :location, :review, :rating, presence: true
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  

private
  def titleize
    self.name = self.name.titleize
    self.location = self.location.titleize
  end
end
