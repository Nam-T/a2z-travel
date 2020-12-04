class Account < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validate :roles_valid

  mount_uploader :avatar, AvatarUploader

  private

  def roles_valid
    # if input_roles.present?
    # end
  end
end
