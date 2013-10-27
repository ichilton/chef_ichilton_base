#
# Cookbook Name:: ichilton_base
# Attributes: default
#

default[:ichilton_base][:packages] = %w[ bzip2 cron curl dnsutils ftp git rsync screen telnet tmux vim wget zsh ]

default[:ichilton_base][:smtp_daemon][:enabled] = true

normal[:tz] = 'Europe/London'
normal[:locale] = 'en_GB.utf8'

normal[:build_essential][:compiletime] = true

normal[:resolver][:search] = node[:domain]
normal[:resolver][:nameservers] = [ '8.8.8.8', '8.8.4.4' ]
normal[:resolver][:options] = { :timeout => 2 }

normal[:authorization][:sudo][:groups] = [ 'sudo' ]
normal[:authorization][:sudo][:include_sudoers_d] = true
