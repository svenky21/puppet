class httpd {

package { httpd:
	ensure => present,
}

file { "/etc/httpd/conf.d/test02.conf":
	owner => "apache",
	group => "apache",
	mode => 0440,
	source => "puppet://$puppetmaster/modules/httpd/files/test02.conf",
	require => Package["httpd"],
	}
}
