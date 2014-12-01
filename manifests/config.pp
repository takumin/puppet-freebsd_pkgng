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

  define freebsd_pkgng_repos ($path, $url, $mirror_type, $signature_type, $fingerprints, $enabled) {
    file { "$path":
      ensure  => file,
      owner   => 'root',
      group   => 'wheel',
      mode    => '0644',
      content => template($::freebsd_pkgng::repos_template),
    }
  }
  create_resources(freebsd_pkgng_repos, $::freebsd_pkgng::repos)

}
