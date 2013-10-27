#
# Cookbook Name:: ichilton_base
# Recipe:: _locale
#

# Set correct timezone:
include_recipe 'timezone'

# Locale:
template '/etc/default/locale' do
  source 'locale.erb'
  mode '0644'
end

ENV['LANGUAGE'] = ENV['LANG'] = ENV['LC_ALL'] = node['locale']

# Install/setup ntpd:
include_recipe 'ntp'
