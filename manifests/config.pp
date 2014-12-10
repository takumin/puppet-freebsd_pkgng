# == Class freebsd_pkgng::config
#
# This class is called from freebsd_pkgng for service config.
#
class freebsd_pkgng::config {

  file { "$::freebsd_pkgng::config":
    ensure  => file,
    owner   => 'root',
    group   => 'wheel',
    mode    => '0644',
    content => template($::freebsd_pkgng::config_template),
  }

  file { $::freebsd_pkgng::REPOS_DIR:
    ensure => directory,
    owner => 'root',
    group => 'wheel',
    mode  => '0755',
  }

  if $::freebsd_pkgng::repos {
    create_resources(freebsd_pkgng::repos, $::freebsd_pkgng::repos)
  }

}
