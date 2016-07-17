class system::packages {
  package {[
    'anacron',
    'cron',
    'locate',
    'sysstat',
    'x2x',
    'xscreensaver',
    'xscreensaver-data',
    'xscreensaver-data-extra',
    'xscreensaver-gl',
    'xscreensaver-gl-extra',
    'xscreensaver-screensaver-bsod',
    'xscreensaver-screensaver-webcollage',
  ]:
    ensure => 'present',
  }
}
