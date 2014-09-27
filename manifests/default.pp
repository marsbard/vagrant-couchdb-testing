
package { "couchdb":
    require => Exec["apt-get update"],
    ensure => present,
}

exec { "apt-get update":
    path => "/usr/bin",
}
