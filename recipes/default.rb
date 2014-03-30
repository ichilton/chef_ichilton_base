#
# Cookbook Name:: ichilton_base
# Recipe:: default
#

include_recipe 'ichilton_base::system'
include_recipe 'ichilton_base::packages'

if node[:ichilton_base][:smtp_daemon][:enabled]
  include_recipe 'ichilton_base::smtp_daemon'
end

