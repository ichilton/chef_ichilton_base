#
# Cookbook Name:: ichilton_base
# Recipe:: core
#

# Run apt-get update to update the package list:
include_recipe 'apt' if node['platform_family'] == 'debian'

# Update resolv.conf:
include_recipe 'resolver'

# locale, date/time etc:
include_recipe 'system::_locale'

# Swap space:
include_recipe 'system::_swap'

# Install compiler and other useful build tools:
include_recipe 'build-essential'

# Setup sudo:
include_recipe 'sudo'
