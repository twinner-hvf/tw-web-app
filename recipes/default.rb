#
# Cookbook Name:: tw-web-app
# Recipe:: default
#
#

case node['platform']
when 'ubuntu'
  execute "update-upgrade" do
    command "sudo apt-get update && sudo apt-get upgrade -y"
    action :run
  end
end

#execute "update-upgrade" do
#  command "sudo apt-get update && sudo apt-get upgrade -y"
#  action :run
#end
