#
# Cookbook Name:: ichilton_base
# Recipe:: default
#

include_recipe 'ichilton_base::core'
include_recipe 'ichilton_base::packages'
include_recipe 'ichilton_base::smtp_daemon'
