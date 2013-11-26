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