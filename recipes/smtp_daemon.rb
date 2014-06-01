#
# Cookbook Name:: ichilton_base
# Recipe:: smtp_daemon
#

['exim4-base', 'exim4-config', 'exim4-daemon-light'].each do |pkg|
  package pkg do
    action :purge
  end
end

# Use postfix cookbook to install:
include_recipe 'postfix'
