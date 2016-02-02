#
# Cookbook Name:: sensu_chef
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# include recipe(s)
include_recipe 'chef-vault'
include_recipe 'yum'

# create sensu/uchiwa repo
yum_repository 'uchiwa' do
  description 'Uchiwa repository'
  baseurl 'http://repositories.sensuapp.org/yum/$releasever/$basearch'
  gpgcheck false
  action :create
end

# include recipe(s)
include_recipe 'sensu::default'
include_recipe 'sensu::rabbitmq'
include_recipe 'sensu::redis'
include_recipe 'sensu::server_service'
include_recipe 'sensu::api_service'
include_recipe 'uchiwa'

# configure sensu

# configure uchiwa

