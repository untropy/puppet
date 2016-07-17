class system::files {
  # update locate database cron job
  file { '/etc/cron.daily/locate':
    ensure => 'file',
    group  => '0',
    mode   => '755',
    owner  => '0',
    audit  => all,
  }
  # the sysstat cron job
  file { '/etc/cron.daily/sysstat':
    ensure => 'file',
    group  => '0',
    mode   => '644',
    owner  => '0',
    audit  => all,
  }
  # enable
  file_line { 'enable_sysstat':
    path  => '/etc/cron.daily/sysstat',
    line  => 'ENABLED=true',
    match => '^\s*ENABLED=',
  }
}
