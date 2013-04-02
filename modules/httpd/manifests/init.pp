class httpd::configuration {
    file { "/etc/httpd/conf/httpd.conf":
        ensure => file,
        owner => 'root',
        group => 'root',
        mode => 0644,
        source => "puppet:///modules/httpd/httpd.conf",
    }
}

class httpd {
    include httpd::configuration
}

