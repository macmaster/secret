types = ["crispy", "raw", "crunchy", "grilled"]
types.push "smoked"
types << "deep fried"

# print type info...
puts "types = #{types}"
puts "types.length = #{types.length}"
puts "types.size = #{types.size}"
puts "types[0] = #{types[0]}"
puts "types.first = #{types.first}"
puts "types.last = #{types.last}"
puts "types[1..4] = #{types[1..4]}"
puts "types[4..1] = #{types[4..1]}"
puts "types[-4..-1] = #{types[-4..-1]}"
puts "types[-1] = #{types[-1]}"
puts "\n\n"

contacts = {
	"ronny" => {
		"firstName" => "ronald",
		"lastName" => "macmaster",
		"age" => 20,
		"state" => "Texas",
		"phone" => "(808) 206-1614"
	},
	"walter" => {
		"firstName" => "walter",
		"lastName" => "macmaster",
		"age" => 17,
		"state" => "Hawaii",
		"phone" => "(808) 595-0001"
	}
}

puts "ronny : #{contacts["ronny"]}"
puts "walter : #{contacts["walter"]}"

phrase = "CaN yOu SpoNGeBob it?"
puts "phrase : #{phrase}"
for exp in [/spongebob/i, /can you spongebob it/i, /nice/i]
	test = (phrase =~ exp)
	puts "phrase ~ #{exp}: #{test}"
end
puts "\n\n"

drink = "coffee"
case drink
when "water"
	puts "serving water, sip up..."
when "tea"
	puts "here is your tea sir."
when /coffee/
	print "take a coffee. #{contacts["ronny"]}\n"
else
	puts "have a beer :)"
end
puts "\n\n"

class Contact
	def initialize(firstName, lastName, age, state, phone)
		@firstName = firstName
		@lastName = lastName
		@age = age
		@state = state
		@phone = phone
	end
end

contacts = []
contacts << Contact.new("ronny", "macmaster", 20, "Texas", "(808) 206-1614")
contacts << Contact.new("root", "", 20, "Hawaii", "null")
contacts << Contact.new(lastName="macmaster", age=17, firstName="walter", phone="(808) 595-0001", state="Hawaii")
puts("new contacts... #{contacts}")
puts "finished..."


