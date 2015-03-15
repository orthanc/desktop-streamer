exec { 'apt-get install xvfb':
	command => '/usr/bin/apt-get install -y xvfb fluxbox'
}

exec { 'apt-get install x11vnc':
	command => '/usr/bin/apt-get install -y x11vnc'
}
