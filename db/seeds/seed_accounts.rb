Account.delete_all
admin = Account.create(
  name: 'kulubali',
  email: 'admin@gmail.com',
  password: '123456',
  password_confirmation: '123456',
  confirmed_at: Date.today,
  uid: 'email'
)
admin.add_role :admin
