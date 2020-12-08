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
  has_many :active_relationships, class_name:  "Follow",
                                  foreign_key: "user_id",
                                  dependent:   :destroy
  has_many :following, through: :active_relationships, source: :guider
  has_many :passive_relationships, class_name:  "Follow",
                                   foreign_key: "guider_id",
                                   dependent:   :destroy
  has_many :followers, through: :passive_relationships, source: :user

  # Follows a guider.
  def follow(other_guider)
    following << other_guider
  end

  # Unfollows a guider.
  def unfollow(other_guider)
    following.delete(other_guider)
  end

  # Returns true if the current guider is following the other guider.
  def following?(other_guider)
    following.include?(other_guider)
  end

  private

  def roles_valid
    # if input_roles.present?
    # end
  end
end
