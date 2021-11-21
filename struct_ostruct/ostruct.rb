require "ostruct"

event = OpenStruct.new
event.timestamp = Time.now
event.message = "Something notable happened."

puts event.timestamp
#=> 2019-08-29 23:20:29 -0700
puts event.message
#=> "Something Notable happened."
puts event.sender
#=> nil
puts event.sender = "Michael"
puts event.sender
#=> "Michael"

event = OpenStruct.new(
  {
    timestamp: Time.now,
    message: "Short message.",
    sender: "Michael",
  }
)

puts event.inspect
#=> #<OpenStruct timestamp=2019-08-29 23:20:29 -0700, message="Short message.", sender="Michael">

australia = OpenStruct.new(:country => "Australia", :capital => "Canberra")
puts australia.inspect
#=> #<OpenStruct country="Australia", capital="Canberra">