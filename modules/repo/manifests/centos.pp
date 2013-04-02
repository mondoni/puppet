class localrepo_centos{
	yumrepo { "pmcs-centos-base":
	        name => "pmcs-centos-base",
	        baseurl => "http://repo.linustec.com.br/centos/5/os/$architecture/",
	        descr => "CentOS-$operatingsystemrelease - Base",
	        enabled => 1,
	        gpgcheck => 1,
	        gpgkey => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-5",
	        #require => File["etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$architecture"],
	}

       yumrepo { "pmcs-centos-updates":
	        name => "pmcs-centos-updates",
	        baseurl => "http://repo.linustec.com.br/centos/5/updates/$architecture/",
	        descr => "CentOS-$operatingsystemrelease - Updates",
	        enabled => 1,
	        gpgcheck => 1,
	        gpgkey => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-5",
	        #require => File["etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$architecture"],
	}

	yumrepo { "pmcs-centos-cr":
                name => "pmcs-centos-cr",
                baseurl => "http://repo.linustec.com.br/centos/5/cr/$architecture/",
                descr => "CentOS-$operatingsystemrelease - CR",
                enabled => 0,
                gpgcheck => 1,
                gpgkey => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-5",
                #require => File["etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$architecture"],
        }

       yumrepo { "pmcs-centos-fasttrack":
	        name => "pmcs-centos-fasttrack",
	        baseurl => "http://repo.linustec.com.br/centos/5/fasttrack/$architecture/",
	        descr => "CentOS-$operatingsystemrelease - Fasttrack",
	        enabled => 1,
	        gpgcheck => 1,
	        gpgkey => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-5",
	        #require => File["etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$architecture"],
	}

       yumrepo { "pmcs-centos-extras":
	        name => "pmcs-centos-extras",
	        baseurl => "http://repo.linustec.com.br/centos/5/extras/$architecture/",
	        descr => "CentOS-$operatingsystemrelease - Extras",
	        enabled => 1,
	        gpgcheck => 1,
	        gpgkey => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-5",
	        #require => File["etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$architecture"],
	}

       yumrepo { "pmcs-centos-addons":
	        name => "pmcs-centos-addons",
	        baseurl => "http://repo.linustec.com.br/centos/5/addons/$architecture/",
	        descr => "CentOS-$operatingsystemrelease - Addons",
	        enabled => 0,
	        gpgcheck => 1,
	        gpgkey => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-5",
	        #require => File["etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$architecture"],
	}

       yumrepo { "pmcs-centos-centosplus":
	        name => "pmcs-centos-centosplus",
	        baseurl => "http://repo.linustec.com.br/centos/5/centosplus/$architecture/",
	        descr => "CentOS-$operatingsystemrelease - Plus",
	        enabled => 0,
	        gpgcheck => 1,
	        gpgkey => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-5",
	        #require => File["etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$architecture"],
	}

       yumrepo { "pmcs-centos-contrib":
	        name => "pmcs-centos-contrib",
	        baseurl => "http://repo.linustec.com.br/centos/5/contrib/$architecture/",
	        descr => "CentOS-$operatingsystemrelease - Contrib",
	        enabled => 0,
	        gpgcheck => 1,
	        gpgkey => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-5",
	        #require => File["etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$architecture"],
	}
}
