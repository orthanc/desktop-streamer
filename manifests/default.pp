exec { 'apt-get install xvfb':
	command => '/usr/bin/apt-get install -y xvfb ratpoison'
}

exec { 'apt-get install x11vnc':
	command => '/usr/bin/apt-get install -y x11vnc'
}
