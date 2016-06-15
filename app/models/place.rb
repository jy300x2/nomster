class Place < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :photos, dependent: :destroy
  
  validates :name, length: { minimum: 3 }, presence: true
  validates :address, presence: true
  validates :description, presence: true
  geocoded_by :address
  after_validation :geocode

end

