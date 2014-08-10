#
# Cookbook Name:: app-server
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "app-server::directories"

#include_recipe "ruby"

#ruby_setup node[:ruby][:version] do
#  config_destination "/home/deploy/sources.d/chruby.sh" # autoload chruby
#  with_bundler true
#  user "deploy"
#  group "deploy"
#  action [:install, :copy_config]
#end

