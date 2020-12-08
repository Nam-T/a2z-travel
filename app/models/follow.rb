# follower: user
# followed: guider
class Follow < ApplicationRecord
  belongs_to :user, class_name: "Account"
  belongs_to :guider, class_name: "Account"
  validates :user_id, presence: true
  validates :guider_id, presence: true

  validate :roles_valid

  def roles_valid
    errors.add(:guider_id, 'Not is guider') unless Account.find(self.guider_id).has_role?(:guider)
    errors.add(:user_id, 'Not is user') unless Account.find(self.user_id).has_role?(:user)
  end
end
