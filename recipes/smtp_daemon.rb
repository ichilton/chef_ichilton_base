#
# Cookbook Name:: ichilton_base
# Recipe:: smtp_daemon
#

# Install a mail (SMTP) server:
if node[:ichilton_system][:smtp_daemon][:enabled]
  include_recipe 'postfix'
end
