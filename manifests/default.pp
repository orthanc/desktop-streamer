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

class { 'apache':
	default_vhost       => false,
	default_mods        => false,
	default_confd_files => false,
}

apache::vhost { 'desktop_streamer_web':
	port                        => '80',
	docroot                     => '/var/django_sites/desktop_streamer_web',
	manage_docroot              => false,
	wsgi_application_group      => '%{GLOBAL}',
	wsgi_daemon_process         => 'wsgi',
	wsgi_daemon_process_options => {
		processes    => '2',
		threads      => '15',
		display-name => '%{GROUP}',
	},
	wsgi_import_script          => '/var/django_sites/desktop_streamer_web/wsgi.py',
	wsgi_import_script_options  => {
		process-group => 'wsgi',
		application-group => '%{GLOBAL}'
	},
	wsgi_process_group          => 'wsgi',
	wsgi_script_aliases         => { '/' => '/var/django_sites/desktop_streamer_web/wsgi.py' },
}

package { ['python', 'python-django']:
	ensure => installed,
}

# Debugging Packages

package { 'x11vnc':
	ensure => installed,
}

# Vagrant
file { 'django apache dir':
	path    => '/var/django_sites',
	target  => '/vagrant/desktop_streamer_web',
	ensure  => link,
	before  => Apache::Vhost['desktop_streamer_web'],
}
