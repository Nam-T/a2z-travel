Journey.delete_all
JourneySegment.delete_all
TourImage.delete_all
guiders = Account.with_role(:guider)
guiders.each do |guider|
  journey = guider.journeys.create(
    name: '1 vòng dạo quanh Sapa',
    max_member: 3,
    min_member: 2,
    bill_exam: 30000,
    total_time: 2,
  )

  journey_segment = journey.journey_segments.create(
    arrival:    'Nhà thờ đá Sapa',
    stt:        '1',
    spend_time: '2',
    content:    'Tọa lạc ngay trung tâm thị trấn Sapa, nhà thờ Đá Sapa được xây dựng từ năm 1895 được coi là một dấu ấn kiến trúc cổ toàn vẹn nhất của người Pháp còn sót lại. Nhà thờ đã được tôn tạo và bảo tồn, trở thành một hình ảnh không thể thiếu khi nhắc đến thị trấn du lịch Sapa mù sương'
  )

  journey_segment.tour_images.create(
    image: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/seeds/tour/sapa1.jpg')))
  )

  journey_segment = journey.journey_segments.create(
    arrival:    'Thung lũng Mường Hoa',
    stt:        '2',
    spend_time: '1',
    content:    'Bước chân vào thung lũng, du khách sẽ thấy mình như giữa không gian mênh mông thành bình, yên ả. Những thửa ruộng bậc thang điệp điệp trùng trùng cuốn hút, những bãi đá cổ được xếp hạng di tích quốc gia. Hay nhiều hình vẽ kỳ lại tên đá chạm khắc có niên đại hàng ngàn năm tuổi… Tất cả đều khiến cho tour du lịch Sapa của bạn thêm thú vị.'
  )

  journey_segment.tour_images.create(
    image: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/seeds/tour/sapa2.jpg')))
  )

  journey_segment = journey.journey_segments.create(
    arrival:    'Chợ đêm Sapa',
    stt:        '3',
    spend_time: '2',
    content:    'Chợ đêm tại Sapa được xem như là một trong những địa điểm tham quan, mua sắm nhộn nhịp. Du khách ghé đến Sapa thì không thể bỏ qua được khu chợ này. Chợ Sa Pa về đêm trở nên rực rỡ sắc màu hơn bởi các gian hàng của người Mông và Dao đỏ. Các gian hàng thủ công độc đáo mang màu sắc miền núi cũng phong phú như đồ trang sức bạc, thổ cẩm, khèn, sáo.'
  )

  journey_segment.tour_images.create(
    image: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/seeds/tour/sapa3.jpg')))
  )
end