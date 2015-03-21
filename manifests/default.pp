class { 'apt':
}

# Base Recording
apt::ppa { 'ppa:kirillshkrogalev/ffmpeg-next':
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
	default_vhost       => true,
}

# Debugging Packages

package { 'x11vnc':
	ensure => installed,
}
