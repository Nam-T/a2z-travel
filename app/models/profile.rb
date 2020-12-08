class Profile < ApplicationRecord
  # t.datetime 'date_of_birth'
  # t.string   'country'
  # t.string   'hometown'
  # t.string   'live_at'
  # t.string   'work'
  # t.string   'interests'
  # t.integer  'account_id'

  belongs_to :account
end
