#
# Cookbook Name:: webserver_test
# Recipe:: default
#
# Copyright (c) 2018 The Authors, All Rights Reserved.

package_name =
service_name =
case node['platform']
	when 'centos' then 'httpd'
	when 'ubuntu' then 'apache2'
end

package package_name

service service_name do
	action [:enable, :start]
end
