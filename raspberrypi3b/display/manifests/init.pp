# settings for display
class display (
  rotate = display::params,
) inherit display::params {
  # boot config contains the settings
  file { '/boot/config.txt':
    ensure  => 'file',
    group   => '0',
    mode    => '755',
    owner   => '0',
  }
  # Set the right side up of the screen
  file_line { "rotate_screen_${rorate}":
    path => '/boot/config.txt',
    line => "lcd_rotate=${rotate}",
    match => '^\s*lcd_rotate=',
  }
}
