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
Profile.create(
  date_of_birth: '29/01/1999'.to_date,
  country:       'Việt Nam',
  hometown:      'Hải Phòng',
  live_at:       'Hà Nội',
  work:          'IT',
  interests:     'Ca hát, nhảy múa, nấu ăn, ngủ',
  account_id:    admin.id
)

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
Profile.create(
  date_of_birth: '20/04/1999'.to_date,
  country:       'Việt Nam',
  hometown:      'Hải Phòng',
  live_at:       'Hà Nội',
  work:          'IT',
  interests:     'Đọc sách, chơi thể  thao',
  account_id:    user.id
)

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
Profile.create(
  date_of_birth: '06/09/1998'.to_date,
  country:       'Việt Nam',
  hometown:      'Lào Cai',
  live_at:       'Hà Nội',
  work:          'IT',
  interests:     'Chém gió, ca hát, đánh đàn',
  account_id:    guider.id
)
