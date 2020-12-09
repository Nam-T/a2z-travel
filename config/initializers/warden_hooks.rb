# Warden::Manager.after_set_account do |account,auth,opts|
#   scope = opts[:scope]
#   auth.cookies.signed["#{scope}.id"] = account.id
# end

# Warden::Manager.before_logout do |account, auth, opts|
#   scope = opts[:scope]
#   auth.cookies.signed["#{scope}.id"] = nil
# end
