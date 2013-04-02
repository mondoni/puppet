class repo_linustec{
	yumrepo {"linustec":
		name => "linustec",
		baseurl => "http://packages.linustec.inf.br/deps/redhat/5/$architecture/",
		descr => "Linustec Packages",
		enabled => 1,
		gpgcheck => 0,
	}
}
