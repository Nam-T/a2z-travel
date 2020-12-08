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
  name: 'Trần Tuấn Ngọc',
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

guider = Account.create(
  name: 'Phạm Bích Liên',
  email: 'guider-1@gmail.com',
  password: '123456',
  password_confirmation: '123456',
  confirmed_at: Date.today,
  uid: 'email',
  avatar: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/seeds/avatar/avt.png')))
)
guider.add_role :guider
Profile.create(
  date_of_birth: '26/04/2007'.to_date,
  country:       'Việt Nam',
  hometown:      'Lạng Sơn',
  live_at:       'Hải Phòng',
  work:          'Student',
  interests:     'Chém gió, ca hát, đánh đàn',
  account_id:    guider.id
)

guider = Account.create(
  name: 'Lê Tuấn Anh',
  email: 'guider-2@gmail.com',
  password: '123456',
  password_confirmation: '123456',
  confirmed_at: Date.today,
  uid: 'email',
  avatar: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/seeds/avatar/tuan-anh.jpg')))
)
guider.add_role :guider
Profile.create(
  date_of_birth: '09/06/1999'.to_date,
  country:       'Việt Nam',
  hometown:      'Thanh Hóa',
  live_at:       'Hà Nội',
  work:          'IT',
  interests:     'Chém gió, ca hát, đánh đàn',
  account_id:    guider.id
)

guider = Account.create(
  name: 'Nguyễn Công Phước',
  email: 'guider-3@gmail.com',
  password: '123456',
  password_confirmation: '123456',
  confirmed_at: Date.today,
  uid: 'email',
  avatar: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/seeds/avatar/phuoc-nguyen.jpg')))
)
guider.add_role :guider
Profile.create(
  date_of_birth: '10/05/1999'.to_date,
  country:       'Việt Nam',
  hometown:      'Bắc Ninh',
  live_at:       'Hà Nội',
  work:          'IT',
  interests:     'Chém gió, ca hát, đánh đàn',
  account_id:    guider.id
)

guider = Account.create(
  name: 'Nguyễn Thành Nam',
  email: 'guider-4@gmail.com',
  password: '123456',
  password_confirmation: '123456',
  confirmed_at: Date.today,
  uid: 'email',
  avatar: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/seeds/avatar/thanh-nam.jpg')))
)
guider.add_role :guider
Profile.create(
  date_of_birth: '07/03/1999'.to_date,
  country:       'Việt Nam',
  hometown:      'Hà Nội',
  live_at:       'Hà Nội',
  work:          'IT',
  interests:     'Chém gió, ca hát, đánh đàn',
  account_id:    guider.id
)

guider = Account.create(
  name: 'Nguyễn Ngọc Nghĩa',
  email: 'guider-5@gmail.com',
  password: '123456',
  password_confirmation: '123456',
  confirmed_at: Date.today,
  uid: 'email',
  avatar: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/seeds/avatar/ngoc-nghia.jpg')))
)
guider.add_role :guider
Profile.create(
  date_of_birth: '29/01/1999'.to_date,
  country:       'Việt Nam',
  hometown:      'Hà Nội',
  live_at:       'Hà Nội',
  work:          'IT',
  interests:     'Chém gió, ca hát, đánh đàn',
  account_id:    guider.id
)

list_sample = %w[man woman].freeze
(6..30).each do |index|
  name = list_sample.sample
  guider = Account.create(
    name: "Nguyễn Ngọc #{name}",
    email: "guider-#{index}@gmail.com",
    password: '123456',
    password_confirmation: '123456',
    confirmed_at: Date.today,
    uid: 'email',
    avatar: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, "app/assets/images/seeds/avatar/#{name}.jpg")))
  )
  guider.add_role :guider
  Profile.create(
    date_of_birth: "#{index}/01/1999".to_date,
    country:       'Việt Nam',
    hometown:      'Hà Nội',
    live_at:       'Hà Nội',
    work:          'Student',
    interests:     'Chém gió, ca hát, đánh đàn',
    account_id:    guider.id
  )
end

# Following relationships
user = Account.with_role(:user).first
guiders = Account.with_role(:guider)
guiders.each { |guider| user.follow(guider) }
