# == Class freebsd_pkgng::install
#
# This class is called from freebsd_pkgng for install.
#
class freebsd_pkgng::install {

  package { $::freebsd_pkgng::package_name:
    ensure => present,
  }
}
