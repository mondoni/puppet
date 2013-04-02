class localrepo_puias{

	############################
	# Desabilita repositorios
	# default da distro.
	############################

    yumrepo {"PUIAS_6_core_Base":
        name => "PUIAS_6_core_Base",
        enabled => 0,
    }

	yumrepo {"PUIAS_6_core_Updates":
		name => "PUIAS_6_core_Updates",
		enabled => 0,
	}

	############################
	# Adiciona repositorios internos da distro.
	############################
	
	yumrepo {"pmcs-puias":
		name => "pmcs-puias",
		baseurl => "http://repo.linustec.com.br/puias/$operatingsystemrelease/$architecture/os",
		descr => "PUIAS Linux OS - $operatingsystemrelease/",
		enabled => 1,
		gpgcheck => 1,
		gpgkey => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-puias",
	}

    yumrepo {"pmcs-puias-updates":
        name => "pmcs-puias-updates",
        baseurl => "http://repo.linustec.com.br/puias/updates/$operatingsystemrelease/en/os/$architecture/",
        descr => "PUIAS Linux OS - $operatingsystemrelease/",
        enabled => 1,
        gpgcheck => 1,
        gpgkey => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-puias",
    }

	yumrepo {"pmcs-puias-unsupported":
        name => "pmcs-puias-unsupported",
        baseurl => "http://repo.linustec.com.br/puias/unsupported/$operatingsystemrelease/$architecture/",
        descr => "PUIAS Linux OS - $operatingsystemrelease/",
        enabled => 0,
        gpgcheck => 1,
        gpgkey => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-puias",
    }

}
