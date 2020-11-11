class Role < ApplicationRecord
  has_and_belongs_to_many :accounts, :join_table => :accounts_roles
  
  belongs_to :resource,
             :polymorphic => true,
             :optional => true
  
  before_save :clean_data

  validates :resource_type,
            :inclusion => { :in => Rolify.resource_types },
            :allow_nil => true

  validate :valid_name_role
  scopify

  private

  def valid_name_role
    errors.add(:name, "format not right") if name.present? && !ROLE.include?(name.downcase)
  end

  def clean_data
    self.name = name.downcase
  end
end
