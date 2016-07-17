class system::users {
  group { 'dwatson':
    ensure => 'present',
    gid    => '1001',
  }
  user { 'dwatson':
    ensure           => 'present',
    gid              => '1001',
    home             => '/home/dwatson',
    password         => '$6$.3FbOfqX$oDwCvWJ6kilkXhIMAq8i0oGO9eW1LzuEVp/yjKimUcZarCmK035eCMQdmG//9Ug8qmlcpMZyWWTnj7evTh731/',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/bin/bash',
    uid              => '1001',
  }
  # user directorys
  file { '/home/dwatson':
    ensure => 'directory',
    group  => '1001',
    mode   => '755',
    owner  => '1001',
  }
  file { '/home/dwatson/.ssh':
    ensure => 'directory',
    group  => '1001',
    mode   => '755',
    owner  => '1001',
  }
  file { '/home/dwatson/.ssh/authorized_keys':
    ensure => 'file',
    group  => '1001',
    mode   => '644',
    owner  => '1001',
    audit  => all,
    content => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC3igeY2f6VF4fGBA0LsqJCZCxE1VjNK76adtaOoB+iQYFcdbqzu++SohkPSXwM8QUjVVgONfbVVRlKBn487NIv30C2BFcgOxBLx5sXxZ71PP4bq/NsrXSrxM4XkyV2rKxkQxJXpctMKvjDB2hegehF431nvMPc8621p9c6KZ26+QEzXJ25j58jemsPUXYlFGztKGO7NvMS2Koq/W41/6LNPkcJPCRZOMPA1QjOE4FE0guXsWILASTmrRLHdIzLJ9iR4CuxxnIjHV/3vuxrncOYHPTUrgwcZkUuVy3kedS8+haqmlPRacZi3r47ZoMCx2lkFhtmkBYjyZPbHz1oH0Zb dwatson@mandy',
  }
}
