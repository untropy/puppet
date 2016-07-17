class system {
  contain 'system::users'
  contain 'system::packages'
  contain 'system::files'
  contain 'system::servoces'

  Class['system::users'] ->
  Class['system::packages'] ->
  Class['system::files'] ->
  Class['system::services']
}
