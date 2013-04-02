class localrepo_epel_five {
	yumrepo {"pmcs-epel":
		name => "pmcs-epel",
		baseurl => "http://repo.linustec.com.br/epel/5/$architecture/",
		descr => "Extra Packages for Enterprise Linux 5",
		enabled => 1,
		gpgcheck => 0,
	}
}

class localrepo_epel_six {
    yumrepo {"pmcs-epel":
        name => "pmcs-epel",
        baseurl => "http://repo.linustec.com.br/epel/6/$architecture/",
        descr => "Extra Packages for Enterprise Linux 6",
        enabled => 1,
        gpgcheck => 0,
    }
}
