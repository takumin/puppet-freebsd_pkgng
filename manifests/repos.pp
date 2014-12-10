define freebsd_pkgng::repos ($url, $mirror_type, $signature_type, $fingerprints, $enabled) {
  file { "/usr/local/etc/pkg/repos/$name":
    ensure  => file,
    owner   => 'root',
    group   => 'wheel',
    mode    => '0644',
    content => template($::freebsd_pkgng::repos_template),
  }
}
