#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "users"

user "deploy" do
  supports :manage_home => true
  comment "Random User"
  uid 1234
  gid "deploy"
  home "/home/deploy"
  shell "/bin/bash"
end

sudo "deploy" do
  user "deploy"
  nopasswd true
end
