#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "users"

users_manage "deploy" do
  group_id node[:base][:group_id]
end
sudo "deploy" do
  user "deploy"
  nopasswd true
end
