#
# Cookbook Name:: ichilton_base
# Recipe:: packages
#

node[:ichilton_base][:packages].each do |pkg|
  package pkg
end
