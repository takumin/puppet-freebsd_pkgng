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
  $ABI                  = $::freebsd_pkgng::params::ABI,
  $ALIAS                = $::freebsd_pkgng::params::ALIAS,
  $ASSUME_ALWAYS_YES    = $::freebsd_pkgng::params::ASSUME_ALWAYS_YES,
  $CASE_SENSITIVE_MATCH = $::freebsd_pkgng::params::CASE_SENSITIVE_MATCH,
  $CUDF_SOLVER          = $::freebsd_pkgng::params::CUDF_SOLVER,
  $DEBUG_LEVEL          = $::freebsd_pkgng::params::DEBUG_LEVEL,
  $DEBUG_SCRIPTS        = $::freebsd_pkgng::params::DEBUG_SCRIPTS,
  $DEVELOPER_MODE       = $::freebsd_pkgng::params::DEVELOPER_MODE,
  $EVENT_PIPE           = $::freebsd_pkgng::params::EVENT_PIPE,
  $FETCH_RETRY          = $::freebsd_pkgng::params::FETCH_RETRY,
  $FETCH_TIMEOUT        = $::freebsd_pkgng::params::FETCH_TIMEOUT,
  $HANDLE_RC_SCRIPTS    = $::freebsd_pkgng::params::HANDLE_RC_SCRIPTS,
  $INDEXDIR             = $::freebsd_pkgng::params::INDEXDIR,
  $INDEXFILE            = $::freebsd_pkgng::params::INDEXFILE,
  $IP_VERSION           = $::freebsd_pkgng::params::IP_VERSION,
  $NAMESERVER           = $::freebsd_pkgng::params::NAMESERVER,
  $PERMISSIVE           = $::freebsd_pkgng::params::PERMISSIVE,
  $PKG_CACHEDIR         = $::freebsd_pkgng::params::PKG_CACHEDIR,
  $PKG_DBDIR            = $::freebsd_pkgng::params::PKG_DBDIR,
  $PKG_ENABLE_PLUGINS   = $::freebsd_pkgng::params::PKG_ENABLE_PLUGINS,
  $PKG_ENV              = $::freebsd_pkgng::params::PKG_ENV,
  $PKG_PLUGINS_DIR      = $::freebsd_pkgng::params::PKG_PLUGINS_DIR,
  $PKG_SSH_ARGS         = $::freebsd_pkgng::params::PKG_SSH_ARGS,
  $PLIST_KEYWORDS_DIR   = $::freebsd_pkgng::params::PLIST_KEYWORDS_DIR,
  $PLUGINS              = $::freebsd_pkgng::params::PLUGINS,
  $PLUGINS_CONF_DIR     = $::freebsd_pkgng::params::PLUGINS_CONF_DIR,
  $PORTSDIR             = $::freebsd_pkgng::params::PORTSDIR,
  $REPOS_DIR            = $::freebsd_pkgng::params::REPOS_DIR,
  $REPO_AUTOUPDATE      = $::freebsd_pkgng::params::REPO_AUTOUPDATE,
  $RUN_SCRIPTS          = $::freebsd_pkgng::params::RUN_SCRIPTS,
  $SAT_SOLVER           = $::freebsd_pkgng::params::SAT_SOLVER,
  $SSH_RESTRICT_DIR     = $::freebsd_pkgng::params::SSH_RESTRICT_DIR,
  $SYSLOG               = $::freebsd_pkgng::params::SYSLOG,
  $UNSET_TIMESTAMP      = $::freebsd_pkgng::params::UNSET_TIMESTAMP,
  $VULNXML_SITE         = $::freebsd_pkgng::params::VULNXML_SITE,
) inherits ::freebsd_pkgng::params {

  # validate parameters here

  class { '::freebsd_pkgng::config': } ~>
  class { '::freebsd_pkgng::update': } ->
  Class['::freebsd_pkgng']
}
