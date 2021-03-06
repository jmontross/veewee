Veewee::Session.declare({
  # Minimum RAM requirement for installation is 640MB.
  :cpu_count => '1', 
  :memory_size=> '640',
  :disk_size => '10140', 
  :disk_format => 'VDI', 
  :hostiocache => 'off', 
  :hwvirtext => 'on',
  :os_type_id => 'Fedora_64',
  :iso_file => "Fedora-15-x86_64-netinst.iso",
  :iso_src => "http://ftp.halifax.rwth-aachen.de/fedora/linux/releases/15/Fedora/x86_64/iso/Fedora-15-x86_64-netinst.iso",
  :iso_md5 => "b2398cc55aa5b802865246f2f702899f",
  :iso_download_timeout => 1000,
  :boot_wait => "10", 
  :boot_cmd_sequence => [ '<Tab> linux text ks=http://%IP%:%PORT%/ks.cfg<Enter><Enter>' ],
  :kickstart_port => "7122", 
  :kickstart_timeout => 10000, 
  :kickstart_file => "ks.cfg",
  :ssh_login_timeout => "100", 
  :ssh_user => "vagrant", 
  :ssh_password => "vagrant", 
  :ssh_key => "",
  :ssh_host_port => "7222", 
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "/sbin/halt -h -p",
  :postinstall_files => [ "postinstall.sh"], 
  :postinstall_timeout => 10000
})
