class JourneySegment < ApplicationRecord
  # t.string   'departure'
  # t.string   'arrival'
  # t.integer  'stt'
  # t.integer  'spend_time'
  # t.integer  'journey_id'
  # t.text     'content'

  belongs_to :journey
  has_many   :tour_images, dependent: :destroy
end
