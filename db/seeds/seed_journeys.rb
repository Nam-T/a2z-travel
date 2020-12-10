Journey.delete_all
JourneySegment.delete_all
TourImage.delete_all
guiders = Account.with_role(:guider)
custom_guiders = Account.with_role(:guider).limit(3)
####################################################
####################################################
####################################################
custom_guider = custom_guiders[0]
journey = custom_guider.journeys.create(
  name: 'Phượt đêm Hà Nội',
  max_member: 3,
  min_member: 1,
  bill_exam: 3_000_000,
  total_time: 12,
)

journey_segment = journey.journey_segments.create(
  arrival:    '1 vòng cầu Nhật Tân',
  stt:        '1',
  spend_time: '2',
  content:    'Khác với cầu Long Biên, cầu Nhật Tân là một biểu tượng của sự năng động, có nét hiện đại hơn hẳn. Đi phượt đêm với bạn bè, gió trên cầu thổi lồng lộng, thi thoảng rung lên rất là thích.'
)

journey_segment.tour_images.create(
  image: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/seeds/tour/0_1.jpg')))
)

journey_segment = journey.journey_segments.create(
  arrival:    'Phố Tạ Hiện',
  stt:        '2',
  spend_time: '2',
  content:    'Nhắc đến những con phố không ngủ ở Hà Nội thì Tạ Hiện luôn đứng top 1. Tạ Hiện vui không phải vì sự xa hoa của con phố cổ mà vì giới trẻ thích cái nhịp sống ở đây. Ngồi nhâm nhi chút bia, tán gẫu với bạn bè và nghe nhạc vậy mà cũng ngồi chán chê chả muốn về.'
)

journey_segment.tour_images.create(
  image: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/seeds/tour/0_2.jpg')))
)

journey_segment = journey.journey_segments.create(
  arrival:    'Phố đi bộ Hồ Gươm',
  stt:        '3',
  spend_time: '1',
  content:    'Sau khi làm vài ly bia ở Tạ Hiện, ta có thể dạo một vòng ở phố đi bộ bờ hồ. Nơi này có nhiều hoạt động ngoài trời rất thú vị như: nghe nhạc, xem các nhóm nhảy stress style, ăn kem chanh,…'
)

journey_segment.tour_images.create(
  image: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/seeds/tour/0_3.jpg')))
)

journey_segment = journey.journey_segments.create(
  arrival:    'Phượt đêm phố cổ',
  stt:        '4',
  spend_time: '7',
  content:    'Khi con phố cổ đã về khuya sẽ trả lại không gian đường phố vắng lặng. Đối với những ai thích phượt đêm, thì thứ mà họ yêu thích lại chính là phút giây yên tĩnh của phố thị.'
)

journey_segment.tour_images.create(
  image: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/seeds/tour/0_4.jpg')))
)

#####################################################
custom_guider = custom_guiders[1]
journey = custom_guider.journeys.create(
  name: 'Sài Gòn và những hoài niệm',
  max_member: 3,
  min_member: 1,
  bill_exam: 3_000_000,
  total_time: 5,
)

journey_segment = journey.journey_segments.create(
  arrival:    'Nhà thờ Đức Bà',
  stt:        '1',
  spend_time: '1',
  content:    'Nếu như Hà Nội có nhà thờ Lớn ngay Hồ Gươm thì Sài Gòn có nhà thờ Đức Bà cực nổi tiếng. Nhà thờ được xây dựng từ năm 1877 với lối kiến trúc Pháp độc đáo được các mục tử và nghệ nhân dốc hết tâm huyết xây dựng.'
)

journey_segment.tour_images.create(
  image: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/seeds/tour/1_1.jpg')))
)

journey_segment = journey.journey_segments.create(
  arrival:    'Dinh Thống Nhất',
  stt:        '2',
  spend_time: '1',
  content:    'Biểu tượng thứ hai của Sài Gòn là dinh Độc Lập, hay còn được gọi là dinh Thống Nhất. Đây là nơi làm việc của Toàn quyền Đông Dương và Tổng thống Ngô Đình Diệm trước sự kiện 30/4/1975. Đến nay, dinh Độc Lập vẫn là một trong những công trình kiến trúc tiêu biểu nhất của miền Nam Việt Nam những năm 1960. Là công trình được thiết kế theo kiến trúc phương Đông, hiện đại. Bạn sẽ được chiêm ngưỡng những chứng tích ghi dấu thời khắc độc lập của dân tộc 30-4-1975.'
)

journey_segment.tour_images.create(
  image: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/seeds/tour/1_2.jpg')))
)

journey_segment = journey.journey_segments.create(
  arrival:    'Bến Nhà Rồng',
  stt:        '3',
  spend_time: '1',
  content:    'Công trình bến nhà Rồng được thiết kế theo lối kiến trúc đặc trưng của Pháp kết hợp với văn hóa phương Đông. Nổi bật với hành lang bao quanh và vòm cuốn, trên mái nhà tạc tượng “Lưỡng Long chầu Nguyệt”. Sau khi kiến trúc lại, hai con rồng được sắp xếp cho đầu hướng ra ngoài. Bảo tàng có trưng bày nhiều hiện vật về cuộc đời cũng như sự nghiệp cách mạng sáng chói của Hồ chủ tịch. Phòng trưng bày được chia theo chủ đề dọc theo những dấu mốc quan trọng trong cuộc đời lãnh tụ Hồ Chí Minh.'
)

journey_segment.tour_images.create(
  image: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/seeds/tour/1_3.jpg')))
)

journey_segment = journey.journey_segments.create(
  arrival:    'Địa đạo Củ Chi',
  stt:        '4',
  spend_time: '2',
  content:    'Đây được xem là kì quan độc nhất vô nhị, dài 250km, chạy ngoắt ngoéo dưới lòng đất. Với đường hầm sâu dưới đất từ 3-5m, chiều cao chỉ đủ để 1 người đi lom khom. Địa đạo Củ Chi trở thành điểm đến hút khách trong nước và quốc tế, đây cũng là điểm đến tự hào của dân tộc Việt Nam với bạn bè quốc tế.'
)

journey_segment.tour_images.create(
  image: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/seeds/tour/1_4.jpg')))
)

######################################################

custom_guider = custom_guiders[2]
journey = custom_guider.journeys.create(
  name: '1 ngày ở Đà Nẵng',
  max_member: 3,
  min_member: 1,
  bill_exam: 6_000_000,
  total_time: 16,
)

journey_segment = journey.journey_segments.create(
  arrival:    'Bình minh trên biển Mỹ Khê',
  stt:        '1',
  spend_time: '2',
  content:    'Bãi biển đẹp nhất thành phố và cũng là bãi biển nằm ngay trong trung tâm thành phố, chính là bãi biển Mỹ Khê. Nhiều năm trước đây, bãi biển Mỹ Khê khá hoang vắng chỉ với một con đường nhựa duy nhất chạy ven bãi biển. Nhưng hiện nay con đường này đã rợp bóng cây, những công viên đầy chim bồ câu với những vườn tượng được đầu tư kỹ lưỡng về mặt nghệ thuật… khiến bãi biển Mỹ Khê trở thành điểm đón bình minh đẹp nhất thành phố.'
)

journey_segment.tour_images.create(
  image: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/seeds/tour/2_1.jpg')))
)

journey_segment = journey.journey_segments.create(
  arrival:    'Thăm Ngũ Hành Sơn',
  stt:        '2',
  spend_time: '4',
  content:    'Ngũ Hành Sơn hay còn được gọi với tên là Non Nước là một khu vực núi rất nổi tiếng nên nếu có  1 ngày du lịch ở Đà Nẵng các bạn nên dành thời gian để tới đây. Địa điểm này nằm cách trung tâm thành phố khoảng gần 10 km, trên tuyến đường đi Hội An. Đây cũng là nơi ghi dấu những di tích lịch sử, văn hóa như mộ thân mẫu Tướng quân Trần Quang Diệu, đền thờ công chúa Ngọc Lan, bút tích sắc phong quốc tự, địa đạo núi đá Chồng, hang Bà Tho… Và là một khu vực du lịch sinh thái hết sức độc đáo.'
)

journey_segment.tour_images.create(
  image: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/seeds/tour/2_2.jpg')))
)

journey_segment = journey.journey_segments.create(
  arrival:    'Bán đảo Sơn Trà',
  stt:        '3',
  spend_time: '10',
  content:    'Bán đảo Sơn Trà được ví như viên ngọc quý của Đà Nẵng bởi nơi đây có cả rừng, cả núi và cả biển. Các bạn có thể chạy xe một vòng bán đảo Sơn Trà, ghé thăm chùa Linh Ứng – ngôi chùa có địa thế đẹp nhất ở Đà Nẵng. Chùa Linh Ứng nằm trên một ngọn đồi có hình con rùa hướng ra biển cả, từ khuôn viên của Chùa các bạn có thể nhìn thấy Bãi Bụt trải dài ở bên dưới. Đây được coi là nơi hội tụ linh khí của đất trời, mang đậm dấu ấn kiến trúc và nghệ thuật Phật giáo nước ta. Trên Chùa có tượng Quan Thế Âm Bồ Tát 67m, bức tượng cao nhất Việt Nam, với đường kính đài sen tới 35m, trong lòng tượng được chia thành 17 tầng, mỗi tầng đều có bệ thờ 21 tượng Phật với hình dáng và tư thế khác nhau. Ngoài ra, nếu muốn ngắm cảnh hoàng hôn trên bán đảo Sơn Trà thì các bạn có thể chạy xe lên đỉnh Bàn cờ. Để lên đến đỉnh Bàn Cờ, các bạn phải trèo một đoạn bậc thang đá khá dốc. Nếu bạn không muốn leo trèo thì có thể ngắm cảnh ở ngay Đồi Vọng Cảnh trên đường lên đỉnh núi.'
)

journey_segment.tour_images.create(
  image: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/seeds/tour/2_3.jpg')))
)

######################################################
######################################################
######################################################
guider = guiders - custom_guiders
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