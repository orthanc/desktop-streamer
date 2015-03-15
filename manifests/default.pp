class { 'apt': }

# Base Recording
apt::ppa { 'ppa:mc3man/trusty-media':
	before => Package['ffmpeg'],
}

package { ['xvfb', 'fluxbox']:
	ensure => installed,
}

package { 'ffmpeg':
	ensure => installed,
}

# DJango

package { ['python', 'python-django']:
	ensure => installed,
}


# Debugging Packages

package { 'x11vnc':
	ensure => installed,
}
