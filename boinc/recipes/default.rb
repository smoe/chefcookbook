#
# Cookbook Name:: boinc
# Recipe:: default
#
# Copyright 2016, Steffen Moeller
#
# All rights reserved - Do Not Redistribute
#

apt_update 'Update the apt cache daily' do
  frequency 86_400
  action :periodic
end

package 'boinc-client' do
  action :install
end

package 'boinc-client-nvidia-cuda' do
  action :install
end

service 'boinc-client' do
  supports :status => true
  action [ :enable, :start ]
end

execute 'register with Einstein@Home' do
  command 'boinccmd --project_attach https://einstein.phys.uwm.edu 11376_ed6638d7db21cc162e96f75c4e54dd7b'
end
