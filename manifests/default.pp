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

class { 'apache':
	default_mods        => false,
	default_confd_files => false,
}

# Debugging Packages

package { 'x11vnc':
	ensure => installed,
}
