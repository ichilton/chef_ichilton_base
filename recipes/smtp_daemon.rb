#
# Cookbook Name:: ichilton_base
# Recipe:: smtp_daemonsmtp_daemon
#

# Install a mail (SMTP) server:
if node[:ichilton_base][:smtp_daemon][:enabled]
  include_recipe 'postfix'
end
