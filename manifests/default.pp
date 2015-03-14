exec { 'apt-get install xvfb':
	command => '/usr/bin/apt-get install -y xvfb'
}

exec { 'apt-get install x11vnc':
	command => '/usr/bin/apt-get install -y x11vnc'
}

exec { 'apt-get install ratpoison':
	command => '/usr/bin/apt-get install -y ratpoison'
}
