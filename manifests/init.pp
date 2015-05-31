# == Class: freebsd_pkgng
#
# Full description of class freebsd_pkgng here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class freebsd_pkgng (
  $config               = $::freebsd_pkgng::params::config,
  $config_template      = $::freebsd_pkgng::params::config_template,
  $repos                = $::freebsd_pkgng::params::repos,
  $repos_template       = $::freebsd_pkgng::params::repos_template,
  $abi                  = $::freebsd_pkgng::params::abi,
  $alias                = $::freebsd_pkgng::params::alias,
  $assume_always_yes    = $::freebsd_pkgng::params::assume_always_yes,
  $case_sensitive_match = $::freebsd_pkgng::params::case_sensitive_match,
  $cudf_solver          = $::freebsd_pkgng::params::cudf_solver,
  $debug_level          = $::freebsd_pkgng::params::debug_level,
  $debug_scripts        = $::freebsd_pkgng::params::debug_scripts,
  $developer_mode       = $::freebsd_pkgng::params::developer_mode,
  $event_pipe           = $::freebsd_pkgng::params::event_pipe,
  $fetch_retry          = $::freebsd_pkgng::params::fetch_retry,
  $fetch_timeout        = $::freebsd_pkgng::params::fetch_timeout,
  $handle_rc_scripts    = $::freebsd_pkgng::params::handle_rc_scripts,
  $indexdir             = $::freebsd_pkgng::params::indexdir,
  $indexfile            = $::freebsd_pkgng::params::indexfile,
  $ip_version           = $::freebsd_pkgng::params::ip_version,
  $nameserver           = $::freebsd_pkgng::params::nameserver,
  $permissive           = $::freebsd_pkgng::params::permissive,
  $pkg_cachedir         = $::freebsd_pkgng::params::pkg_cachedir,
  $pkg_dbdir            = $::freebsd_pkgng::params::pkg_dbdir,
  $pkg_enable_plugins   = $::freebsd_pkgng::params::pkg_enable_plugins,
  $pkg_env              = $::freebsd_pkgng::params::pkg_env,
  $pkg_plugins_dir      = $::freebsd_pkgng::params::pkg_plugins_dir,
  $pkg_ssh_args         = $::freebsd_pkgng::params::pkg_ssh_args,
  $plist_keywords_dir   = $::freebsd_pkgng::params::plist_keywords_dir,
  $plugins              = $::freebsd_pkgng::params::plugins,
  $plugins_conf_dir     = $::freebsd_pkgng::params::plugins_conf_dir,
  $portsdir             = $::freebsd_pkgng::params::portsdir,
  $repos_dir            = $::freebsd_pkgng::params::repos_dir,
  $repo_autoupdate      = $::freebsd_pkgng::params::repo_autoupdate,
  $run_scripts          = $::freebsd_pkgng::params::run_scripts,
  $sat_solver           = $::freebsd_pkgng::params::sat_solver,
  $ssh_restrict_dir     = $::freebsd_pkgng::params::ssh_restrict_dir,
  $syslog               = $::freebsd_pkgng::params::syslog,
  $unset_timestamp      = $::freebsd_pkgng::params::unset_timestamp,
  $vulnxml_site         = $::freebsd_pkgng::params::vulnxml_site,
) inherits ::freebsd_pkgng::params {

  # validate parameters here

  class { '::freebsd_pkgng::config': } ~>
  class { '::freebsd_pkgng::update': } ->
  Class['::freebsd_pkgng']
}
