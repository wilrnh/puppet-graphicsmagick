# == Class: graphicsmagick::dbg
#
# Installs GraphicsMagick debug symbols packages
#
class graphicsmagick::dbg(
    $package_ensure = $::graphicsmagick::package_ensure_dbg,
  ) {
  
  package{$graphicsmagick::params::dbg_package:
    ensure => $package_ensure,
  }
}
