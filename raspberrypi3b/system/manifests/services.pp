class system::services {
  # cron and sysstat should run
  service { ['anacron', 'cron', 'sysstat']:
    ensure => 'running',
    enable => 'true',
  }
  # locate is "enabled" but doesn't actually run
  service { 'locate':
    ensure => 'stopped',
    enable => 'false',
  }
}
