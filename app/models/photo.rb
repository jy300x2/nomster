class Photo < ActiveRecord::Base
  belongs_to :place, dependent: :destroy
  belongs_to :user, dependent: :destroy

  mount_uploader :picture, PictureUploader
end
