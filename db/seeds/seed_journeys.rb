Journey.delete_all
JourneySegment.delete_all
TourImage.delete_all
guiders = Account.with_role(:guider)
guiders.each do |guider|
  journey = guider.journeys.create(
    name: 'Mù Cang Chải - Bản Lướt',
    max_member: 3,
    min_member: 2,
    bill_exam: 30000,
    total_time: 2,
  )

  journey_segment = journey.journey_segment.create(
    arrival:    'Nhà thờ đá Sapa',
    stt:        '1',
    spend_time: '2'
  )

  journey_segment.tour_image.create(
    image: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/seeds/tour/sapa1.jpg')))
  )

  journey_segment = journey.journey_segment.create(
    arrival:    'Thung lũng Mường Hoa',
    stt:        '2',
    spend_time: '1'
  )

  journey_segment.tour_image.create(
    image: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/seeds/tour/sapa2.jpg')))
  )

  journey_segment = journey.journey_segment.create(
    arrival:    'Chợ đêm Sapa',
    stt:        '3',
    spend_time: '2'
  )

  journey_segment.tour_image.create(
    image: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, 'app/assets/images/seeds/tour/sapa3.jpg')))
  )
end