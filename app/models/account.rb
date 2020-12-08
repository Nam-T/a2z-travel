class Account < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validate :roles_valid

  mount_uploader :avatar, AvatarUploader

  has_many :journeys, foreign_key: 'guider_id', dependent: :destroy, inverse_of: :guider
  has_one :profile, dependent: :destroy

  private

  def roles_valid
    # if input_roles.present?
    # end
  end
end
