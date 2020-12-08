Account.delete_all
admin = Account.create(
  name: 'Phạm Thị Ngọc Vân',
  email: 'admin@gmail.com',
  password: '123456',
  password_confirmation: '123456',
  confirmed_at: Date.today,
  uid: 'email',
  avatar: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/seeds/avatar/ngoc-van.jpg')))
)
admin.add_role :admin

user = Account.create(
  name: 'Vũ Thiệu Nam',
  email: 'user@gmail.com',
  password: '123456',
  password_confirmation: '123456',
  confirmed_at: Date.today,
  uid: 'email',
  avatar: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/seeds/avatar/thieu-nam.jpg')))
)
user.add_role :user

guider = Account.create(
  name: 'Trần Tuấn Ngọc ',
  email: 'guider@gmail.com',
  password: '123456',
  password_confirmation: '123456',
  confirmed_at: Date.today,
  uid: 'email',
  avatar: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/seeds/avatar/tuanngoc.jpg')))
)
guider.add_role :guider
