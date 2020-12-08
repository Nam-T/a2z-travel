class TourImage < ApplicationRecord
  # t.string   'image'

  mount_uploader :image, AvatarUploader

  belongs_to :journey_segment
end
