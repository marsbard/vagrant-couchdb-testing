
class couchdb { 

	package { "couchdb":
		require => [
			Exec["apt-get update"],
		],
		ensure => present,
	}

	service { "couchdb":
		require => [
			Exec["apt-get update"],
			Package["couchdb"],
			File["/etc/couchdb/default.ini"],
		],
		ensure => running,
		restart => true,
	}

    	file { "/etc/couchdb/default.ini":
		require => [
			Package["couchdb"],
		],
		source => "puppet:///modules/couchdb/etc-couchdb-default.ini",
	}

	exec { "apt-get update":
		path => "/usr/bin",
	}

}

