#
# Cookbook Name:: ichilton_base
# Attributes: default
#

default[:ichilton][:base_packages] = %w[ bzip2 cron curl dnsutils ftp git rsync screen sudo telnet tmux traceroute vim wget zsh ]
default[:ichilton][:smtp_daemon][:enabled] = false

normal[:tz] = 'Europe/London'
normal[:locale] = 'en_GB.utf8'

normal[:build_essential][:compiletime] = true

normal[:resolver][:nameservers] = [ '8.8.8.8', '8.8.4.4' ]
normal[:resolver][:options] = { :timeout => 2 }

normal[:authorization][:sudo][:groups] = [ 'sudo' ]
normal[:authorization][:sudo][:include_sudoers_d] = true

