class filetest {
	file { '/tmp/testing.txt' :
	ensure => present,
	owner => 'root',
	group => 'root',
	mode => '0777',
	source => 'puppet:///modules/filetest/testing.txt',
	}

}	
