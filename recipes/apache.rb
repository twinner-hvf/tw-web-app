#
# Cookbook Name:: tw-web-app
# Recipe:: apache
#
#

execute "update-upgrade" do
  command "sudo apt-get update && sudo apt-get upgrade -y"
  action :run
end

package ['apache2', 'php', 'php-mysql'] do
  action :install
end

service 'apache2' do
  action [:enable, :start]
end

cookbook_file '/var/www/html/index.html' do
  source 'index.html'
#  source 'index.php'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

#cookbook_file '/var/www/html/index.html' do
#  action :delete
#end

cookbook_file '/var/www/html/rean-logo.png' do
  source 'rean-logo.png'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
