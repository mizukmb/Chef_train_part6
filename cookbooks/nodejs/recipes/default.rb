#
# Cookbook Name:: nodejs
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
remote_file "/tmp/#{node['nodejs']['filename']}" do
  source "#{node['nodejs']['remote_uri']}"
end

package "gcc-c++" do
  action :install
end

bash "install nodejs" do
  user "root"
  cwd "/tmp"
  code <<-EOC
    tar xvzf #{node['nodejs']['filename']}
    cd #{node['nodejs']['dirname']}
    make
    make install
  EOC
end
