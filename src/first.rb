# first.rb
# very first chef recipe
#
# Author: Ronald Macmaster
# Date: August 12, 2017

dir = "./txt"

directory dir do
	owner "ronny"
	group "ronny"
	mode "0755"
end

file "#{dir}/junk.txt" do
	content "nonsense, tell that to my boss!"
end

