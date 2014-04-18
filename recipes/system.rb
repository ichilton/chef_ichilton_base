#
# Cookbook Name:: ichilton_base
# Recipe:: core
#

# Run apt-get update to update the package list:
include_recipe 'apt' if node['platform_family'] == 'debian'

# Update resolv.conf:
include_recipe 'resolver'

# timezone:
include_recipe 'ichilton_base::_timezone'

# locale:
include_recipe 'ichilton_base::_locale'

# Swap space:
include_recipe 'ichilton_base::_swap'

# Setup sudo:
include_recipe 'sudo'

# Install/setup ntpd:
include_recipe 'ntp' unless system('which openntpd')
