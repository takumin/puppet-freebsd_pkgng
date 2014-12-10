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
      $ABI                  = undef
      $ALIAS                = undef
      $ASSUME_ALWAYS_YES    = undef
      $CASE_SENSITIVE_MATCH = undef
      $CUDF_SOLVER          = undef
      $DEBUG_LEVEL          = undef
      $DEBUG_SCRIPTS        = undef
      $DEVELOPER_MODE       = undef
      $EVENT_PIPE           = undef
      $FETCH_RETRY          = undef
      $FETCH_TIMEOUT        = undef
      $HANDLE_RC_SCRIPTS    = undef
      $INDEXDIR             = undef
      $INDEXFILE            = undef
      $IP_VERSION           = undef
      $NAMESERVER           = undef
      $PERMISSIVE           = undef
      $PKG_CACHEDIR         = undef
      $PKG_DBDIR            = undef
      $PKG_ENABLE_PLUGINS   = undef
      $PKG_ENV              = undef
      $PKG_PLUGINS_DIR      = undef
      $PKG_SSH_ARGS         = undef
      $PLIST_KEYWORDS_DIR   = undef
      $PLUGINS              = undef
      $PLUGINS_CONF_DIR     = undef
      $PORTSDIR             = undef
      $REPOS_DIR            = [
        '/etc/pkg',
        '/usr/local/etc/pkg/repos',
      ]
      $REPO_AUTOUPDATE      = undef
      $RUN_SCRIPTS          = undef
      $SAT_SOLVER           = undef
      $SSH_RESTRICT_DIR     = undef
      $SYSLOG               = undef
      $UNSET_TIMESTAMP      = undef
      $VULNXML_SITE         = undef
    }

    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
