class History < ApplicationRecord
  belongs_to :user, class_name: "Account"
  belongs_to :guider, class_name: "Account"
  belongs_to :journey
  validates :user_id, presence: true
  validates :guider_id, presence: true

  validate :roles_valid

  after_initialize :default_status

  enum status: {
    pending:    0,
    in_process: 1,
    finished:   2,
    canceled:   3
  }

  def roles_valid
    errors.add(:guider_id, 'Not is guider') unless Account.find(self.guider_id).has_role?(:guider)
    errors.add(:user_id, 'Not is user') unless Account.find(self.user_id).has_role?(:user)
  end

  private
    def default_status
      self.status ||= "pending"
    end
end
