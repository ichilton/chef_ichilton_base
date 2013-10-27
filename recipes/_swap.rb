#
# Cookbook Name:: ichilton_base
# Recipe:: _swap
#

swap = `free -m | grep "Swap" | awk '{ print $2 }'`.to_i

unless swap > 0
  script 'create swapfile' do
    interpreter 'bash'
    not_if { File.exists?('/var/swapfile') }
    code <<-eof
      dd if=/dev/zero of=/var/swapfile bs=1M count=1024 &&
      chown root.root /var/swapfile
      chmod 600 /var/swapfile &&
      mkswap /var/swapfile
    eof
  end

  mount '/dev/null' do  # swap file entry for fstab
    action :enable  # cannot mount; only add to fstab
    device '/var/swapfile'
    fstype 'swap'
  end

  script 'activate swap' do
    interpreter 'bash'
    code 'swapon -a'
  end

  script 'set swappiness to 0' do
    interpreter 'bash'
    code 'echo 0 > /proc/sys/vm/swappiness'
  end
end
