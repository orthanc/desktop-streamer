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
	default_vhost       => false,
}

apache::vhost { 'desktop_streamer_web':
	port                => 80,
	docroot             => '/var/www/html',
	wsgi_daemon_process => 'wsgi',
	wsgi_script_aliases => {
		'/' => '/vagrant/desktop_streamer_web/wsgi/stream.py'
	}
}

# Debugging Packages

package { 'x11vnc':
	ensure => installed,
}
