#
# Cookbook Name:: ichilton_base
# Recipe:: packages
#

# Install compiler and other useful build tools:
include_recipe 'build-essential'

# Install other packages:
node[:ichilton_base][:packages].each do |pkg|
  package pkg
end

