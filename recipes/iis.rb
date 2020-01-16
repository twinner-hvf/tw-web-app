#
# Cookbook Name:: tw-web-app
# Recipe:: default
#
#

windows_feature 'Web-Server' do
  all true
  action :install
#  install_method :windows_feature_powershell
end

cookbook_file 'C:\inetpub\wwwroot\index.html' do
  source 'index.html'
#  source 'index.php'
#  owner 'root'
#  group 'root'
  mode '0755'
  action :create
end

cookbook_file 'C:\inetpub\wwwroot\rean-logo.png' do
  source 'rean-logo.png'
#  owner 'administrator'
#  group 'administrator'
  mode '0755'
  action :create
end
