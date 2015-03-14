exec { 'apt-get install xvfb':
	command => '/usr/bin/apt-get install -y xvfb ratpoison'
}

exec { 'apt-get install x11vnc':
	command => '/usr/bin/apt-get install -y x11vnc'
}

file { 'headlessx-service':
	path => '/etc/init.d/headlessx',
	ensure => file,
	source => 'puppet:///modules/headless-x-server/headlessx',
}

service { 'headlessx':
	ensure => running,
	require => [
		Exec['apt-get install xvfb'],
		File['headlessx-service'],
	],
}
