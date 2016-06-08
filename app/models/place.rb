class Place < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  
  validates :name, length: { minimum: 3 }, presence: true
  validates :address, presence: true
  validates :description, presence: true
  geocoded_by :address
  after_validation :geocode

end

