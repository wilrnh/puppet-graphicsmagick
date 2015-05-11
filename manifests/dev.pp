# == Class: graphicsmagick::dev
#
# Installs GraphicsMagick development packages
#
class graphicsmagick::dev (
    $package_ensure = $::graphicsmagick::package_ensure_dev,
  ) {
  
  package{$graphicsmagick::params::dev_packages:
    ensure => $package_ensure,
  }
}
