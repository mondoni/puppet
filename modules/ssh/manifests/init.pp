class ssh::install {
	#package { "openssh","openssh-server","openssh-clients":
	package { "openssh":
		ensure => present,
	}

	package { "openssh-server":
    	ensure => present,
    }

    package { "openssh-clients":
    	ensure => present,
    }

}

class ssh::service {
	service { "sshd":
		ensure => running,
		hasstatus => true,
		hasrestart => true,
		enable => true,
		#require => Class["ssh::config"],
		require => Class["ssh::install"],
	}
}


class ssh::authorized_keys {
	file { "/root/.ssh/authorized_keys":
		ensure => file,
		owner => 'root',
		group => 'root',
		mode => 0644,
		source => "puppet:///modules/ssh/authorized_keys",
		#require => Class["ssh::install"],
		require => Class["ssh::service"],
	}
}

class ssh {
	include ssh::install, ssh::service, ssh::authorized_keys
}
