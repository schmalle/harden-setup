#
# install some stuff for a basic OpenSSH server
# Please note, you must change within templates directory the public SSH key
#


package { 'wget' :
					ensure=> present
}


package { 'openssh-server' :
					ensure=> present
}

package { 'nano' :
					ensure=> present
}					


package { 'nmap' :
					ensure=> present
}	

file { "/home/vagrant/.ssh/authorized_keys" :
  source => "/vagrant/templates/authorized_keys",
  mode => 	0400,
  owner => 	"vagrant",
  group => 	"root"	
}


file { '/etc/ssh' :
  mode => "0555",
  owner =>"root",
  group => "root",
  ensure => present
}


file {"/etc/ssh/sshd_config":
  source => "/vagrant/templates/sshd_config",
  mode => "0400",
  owner =>"root",
  group =>"root"
}




