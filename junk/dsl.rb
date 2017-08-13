# dsl.rb
# scratch paper for the chef DSL
# (DO NOT EXECUTE THIS LOL!!)
#
# Author: Ronald Macmaster

# resource syntax
# # resource : package|template|service $NAME
# 
# resource "NAME" do
# 	parameter1	value1
# 	parameter2	value2
# end
#
# # essentially translates to:
# resource = Resource.new($NAME)
# resource.parameter1 = value1
# resource.parameter2 = value2
# resource.run!
#
# 

user "chef" do
	uid "505"
end

template "/etc/resolv.conf" do
	source "my_resolve.conf.erb"
	owner "root"
	group "root"
	mode "0644"
end

package "ntp" do
	action :upgrade
end

service "apache2" do
	restart_comand "/etc/init.d/apache2 restart"
end

for food in ["bacon", "eggs", "pancakes"]
	file "/tmp/#{food}" do
		content "#{food} is very tasty..."
	end
end

cron "weekly_restart" do
	weekday "1"
	minute "0"
	hour "0"
	command "sudo shutdown -r now"
end

directory "/opt/my/deep/directory" do
	owner "root"
	group "root"
	mode "0644"
	recursive "true"
end

deploy_revision "/opt/myApp" do
	repo "git://github.com/apach/hadoop.git"
end

link "/tmp/delicious" do
	to "/tmp/bacon"
end

mount "/dev/sda8"

remote_file "/tmp/hadoop" do
	source "https://claz.apache.org/hadoop/hadoop-2.8.0/hadoop-2.8.0.tar.gz"
end

service "apache2" do
	action :restart
end


