class localrepo_fedora {
	yumrepo { "fedora-base":
	        name => "pmcs-fedora-base",
	        baseurl => "http://repo.linustec.com.br/fedora/$operatingsystemrelease/$architecture/os",
	        descr => "Fedora $operatingsystemrelease PMCS - $architecture",
	        enabled => 1,
	        gpgcheck => 1,
	        gpgkey => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$architecture",
	        #require => File["etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$architecture"],
	}

	yumrepo { "fedora-updates":
	        name => "pmcs-fedora-updates",
	        baseurl => "http://repo.linustec.com.br/fedora/$operatingsystemrelease/$architecture/updates",
	        descr => "Fedora $operatingsystemrelease PMCS - $architecture - Updates",
	        enabled => 1,
	        gpgcheck => 1,
	        gpgkey => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$architecture",
	        #require => File["etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$architecture"],
	}

	yumrepo { "rpmfusion-free":
	        name => "pmcs-rpmfusion-free",
	        baseurl => "http://repo.linustec.com.br/fedora/$operatingsystemrelease/$architecture/rpmfusion-free",
	        descr => "RPM Fusion Free - $architecture",
	        enabled => 1,
	        gpgcheck => 0,
	        #gpgkey => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$architecture",
	        #require => File["etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$architecture"],
	}

	yumrepo { "rpmfusion-free-updates":
	        name => "pmcs-rpmfusion-free-updates",
	        baseurl => "http://repo.linustec.com.br/fedora/$operatingsystemrelease/$architecture/rpmfusion-free-updates",
	        descr => "RPM Fusion Free - $architecture - Updates",
	        enabled => 1,
	        gpgcheck => 0,
	        #gpgkey => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$architecture",
	        #require => File["etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$architecture"],
	}

	yumrepo { "rpmfusion-nonfree":
	        name => "pmcs-rpmfusion-nonfree",
	        baseurl => "http://repo.linustec.com.br/fedora/$operatingsystemrelease/$architecture/rpmfusion-nonfree",
	        descr => "RPM Fusion Non Free - $architecture",
	        enabled => 1,
	        gpgcheck => 0,
	        #gpgkey => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$architecture",
	        #require => File["etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$architecture"],
	}

	yumrepo { "rpmfusion-nonfree-updates":
	        name => "pmcs-rpmfusion-nonfree-updates",
	        baseurl => "http://repo.linustec.com.br/fedora/$operatingsystemrelease/$architecture/rpmfusion-nonfree-updates",
	        descr => "RPM Fusion Non Free - $architecture - Updates",
	        enabled => 1,
	        gpgcheck => 0,
	        #gpgkey => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$architecture",
	        #require => File["etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$architecture"],
	}

} 
