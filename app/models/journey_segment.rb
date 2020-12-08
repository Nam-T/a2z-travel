class JourneySegment < ApplicationRecord
  # t.string   'departure'
  # t.string   'arrival'
  # t.integer  'stt'
  # t.integer  'spend_time'
  # t.integer  'journey_id'

  belongs_to :journey
  has_many   :tour_image, dependent: :destroy
end
