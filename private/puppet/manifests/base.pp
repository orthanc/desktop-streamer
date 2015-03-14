exec { 'apt-get update':
	command => '/usr/bin/apt-get update',
}

package { 'nginx':
	ensure => present,
	require => Exec['apt-get update'],
}

package { 'php5-fpm':
	ensure => present,
	require => Exec['apt-get update'],
}

service { 'nginx':
	ensure => running,
	require => Package['nginx'],
}

service { 'php5-fpm':
	ensure => running,
	require => Package['nginx'],
}
