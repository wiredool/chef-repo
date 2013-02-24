#
# Cookbook Name:: my_server
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "httpd" do
	:install
end

package "php" do
	:install
end
package "php-xml" do
	:install
end
package "php-mysql" do
	:install
end

package "mysql-server" do
	:install
end

package "git" do
	:install
end
package "hg" do
	:install
end

