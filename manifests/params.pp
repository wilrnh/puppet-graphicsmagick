# == Class: graphicsmagick
#
# Just some params.pp
#
class graphicsmagick::params {
  
  $package_ensure     = 'present'
  $package_ensure_dev = 'absent'
  $package_ensure_dbg = 'absent'
  
  case $::osfamily {
    'Debian': {
      $base_packages              = [
      'graphicsmagick',
      # Declare these specifically to ensure consistent version
      'libgraphicsmagick3',
      'libgraphicsmagick++3',
      # ImageMagick compatibility package
      'graphicsmagick-imagemagick-compat',
      ]
      $dbg_package                = 'graphicsmagick-dbg'
      $dev_packages               = [
        'libgraphicsmagick1-dev',              # C bindings
        'libgraphicsmagick++1-dev',            # C++ bindings
        'graphicsmagick-libmagick-dev-compat', # ImageMagick compatibility dev package
      ]
    }
    
    default: {
      fail("Unsupported platform: ${module_name} currently doesn't support ${::osfamily} or ${::operatingsystem}")
    }
  }
}
