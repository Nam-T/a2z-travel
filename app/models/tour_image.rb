class TourImage < ApplicationRecord
  # t.string   'departure'
  # t.string   'arrival'
  # t.integer  'stt'
  # t.integer  'spend_time'
  # t.integer  'journey_id'

  mount_uploader :image, AvatarUploader

  belongs_to :journey_segment
end
