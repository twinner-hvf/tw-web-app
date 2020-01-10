#
# Cookbook Name:: web-app
# Recipe:: default
#
#

execute "update-upgrade" do
  command "sudo apt-get update && sudo apt-get upgrade -y"
  action :run
end
