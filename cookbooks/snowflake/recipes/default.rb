#
# Cookbook Name:: snowflake
# Recipe:: default
#
# Copyright 2013, Ninefold
#
# All rights reserved - Do Not Redistribute
#

log "My Special Snowflake"

motd '50-snowflake' do
  cookbook 'snowflake'
  source   'motd-snowflake.erb'
end

include_recipe "apache2"

directory "/var/www/snowflake" do
  owner "root"
  group "root"
  mode "0755"
  recursive true
  action :create
end

cookbook_file "/var/www/snowflake/index.html" do
  source "index.html"
  owner "root"
  group "root"
  mode "0644"
end

web_app "snowflake" do
  server_name node.name
  server_aliases [node['fqdn'], "snowflake.com"]
  docroot "/var/www/snowflake"
  template "snowflake.conf"
end