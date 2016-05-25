class Place < ActiveRecord::Base
  paginates_per 10
  belongs_to :user
  validates :name, presence: true, length: { minimum: 3 }
  validates :address, presence: true
  validates :description, presence: true

  geocoded_by :address
  after_validation :geocode

  has_many :comments
end
