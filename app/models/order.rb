class Order < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  validates :latitude, :longitude, presence: true
  after_validation :geocode
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode

end
