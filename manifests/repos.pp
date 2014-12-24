define freebsd_pkgng::repos (
  $url            = undef,
  $mirror_type    = undef,
  $signature_type = undef,
  $fingerprints   = undef,
  $enabled        = true,
) {
  validate_bool($enabled)

  file { "/usr/local/etc/pkg/repos/$name.conf":
    ensure  => file,
    owner   => 'root',
    group   => 'wheel',
    mode    => '0644',
    content => template($::freebsd_pkgng::repos_template),
  }
}
