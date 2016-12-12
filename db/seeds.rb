require "ffaker"

Talk.destroy_all
Speaker.destroy_all

p "Hello from seed.rb"

# Start Timing ....
startTiming = Time.now

5.times do
  first = FFaker::Name.first_name
  last = FFaker::Name.last_name
  email = FFaker::Internet.email

  topic = FFaker::Movie.title
  duration = [30,45,60,90].sample

  Speaker.create({first: first, last: last, email: email})
  Talk.create({topic: topic, duration: duration})
end

# End Timing...
endTiming = Time.now
total = endTiming - startTiming
p total

p "Created #{Talk.count} talks"
p "Created #{Speaker.count} speakers"
