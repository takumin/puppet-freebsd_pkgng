# == Class freebsd_pkgng::update
#
# This class is called from freebsd_pkgng for pkg update
#
class freebsd_pkgng::update {

  exec { 'pkgng repository update':
    command     => 'pkg update -q',
    path        => [ '/usr/local/sbin', '/usr/sbin' ],
    refreshonly => true,
  }

}
