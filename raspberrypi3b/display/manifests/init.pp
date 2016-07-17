# settings for display
class display (
  rotate = display::params,
) inherit display::params {
  # Set the right side up of the screen
  file_line { "rotate_screen_${rorate}":
    path => '/boot/config.txt',
    line => "lcd_rotate=${rotate}",
    match => '^\s*lcd_rotate=',
  }
}
