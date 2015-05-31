# == Class freebsd_pkgng::params
#
# This class is meant to be called from freebsd_pkgng.
# It sets variables according to platform.
#
class freebsd_pkgng::params {
  case $::osfamily {
    'FreeBSD': {
      $config               = '/usr/local/etc/pkg.conf'
      $config_template      = 'freebsd_pkgng/pkg.conf.erb'

      # repository configuration
      $repos                = undef
      $repos_template      = 'freebsd_pkgng/repos.conf.erb'

      # pkg.conf options
      $abi                  = undef
      $alias                = undef
      $assume_always_yes    = undef
      $case_sensitive_match = undef
      $cudf_solver          = undef
      $debug_level          = undef
      $debug_scripts        = undef
      $developer_mode       = undef
      $event_pipe           = undef
      $fetch_retry          = undef
      $fetch_timeout        = undef
      $handle_rc_scripts    = undef
      $indexdir             = undef
      $indexfile            = undef
      $ip_version           = undef
      $nameserver           = undef
      $permissive           = undef
      $pkg_cachedir         = undef
      $pkg_dbdir            = undef
      $pkg_enable_plugins   = undef
      $pkg_env              = undef
      $pkg_plugins_dir      = undef
      $pkg_ssh_args         = undef
      $plist_keywords_dir   = undef
      $plugins              = undef
      $plugins_conf_dir     = undef
      $portsdir             = undef
      $repos_dir            = [
        '/etc/pkg',
        '/usr/local/etc/pkg/repos',
      ]
      $repo_autoupdate      = undef
      $run_scripts          = undef
      $sat_solver           = undef
      $ssh_restrict_dir     = undef
      $syslog               = undef
      $unset_timestamp      = undef
      $vulnxml_site         = undef
    }

    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
