class { 'apt': }

apt::ppa { 'ppa:mc3man/trusty-media':
	before => Package['ffmpeg'],
}

package { ['xvfb', 'fluxbox']:
	ensure => installed,
}

package { 'x11vnc':
	ensure => installed,
}

package { 'ffmpeg':
	ensure => installed,
}
