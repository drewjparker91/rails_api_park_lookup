class Park < ApplicationRecord
  validates :name, :location, :review, :rating, presence: true
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  scope :search, -> (name, location) { where("name ilike ? AND location ilike?", "%#{name}%", "%#{location}%") }
  scope :random_name, -> (name_array) { where("name ilike ?", "#{name_array.sample}") }
before_save(:titleize)

private
  def titleize
    self.name = self.name.titleize
    self.location = self.location.titleize
  end
end
