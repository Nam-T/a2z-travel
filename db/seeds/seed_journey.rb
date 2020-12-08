guiders = Account.with_role(:guider)
guiders.each do |guider|
  guider.journeys.create(
    name: 'Mù Cang Chải - Bản Lướt',
    max_member: 3,
    min_member: 2,
    bill_exam: 30000,
    total_time: 2,
  )
end