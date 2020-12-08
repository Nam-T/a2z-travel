class Journey < ApplicationRecord
  # t.string   'name'
  # t.integer  'max_member'
  # t.integer  'min_member'
  # t.integer  'bill_exam'
  # t.integer  'total_time'
  # t.integer  'guider_id'

  validate :roles_valid

  belongs_to :guider, -> { includes(:roles).where(roles: { name: 'guider' }) }, class_name: 'Account', foreign_key: 'guider_id'
  has_many   :journey_segments, dependent: :destroy

  private

  def roles_valid
    errors.add(:guider_id, 'Not is guider') unless Account.find(self.guider_id).has_role?(:guider)
  end
end
