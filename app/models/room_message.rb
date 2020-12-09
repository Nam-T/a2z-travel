class RoomMessage < ApplicationRecord
  # t.integer  'user_id'
  # t.integer  'guider_id'

  belongs_to :guider, -> { includes(:roles).where(roles: { name: 'guider' }) }, class_name: 'Account', foreign_key: 'guider_id'
  belongs_to :user, -> { includes(:roles).where(roles: { name: 'user' }) }, class_name: 'Account', foreign_key: 'user_id'

  validate :roles_valid
  has_many :messages

  private

  def roles_valid
    errors.add(:guider_id, 'Not is guider') unless Account.find(self.guider_id).has_role?(:guider)
    errors.add(:user_id, 'Not is user') unless Account.find(self.user_id).has_role?(:user)
  end
end
