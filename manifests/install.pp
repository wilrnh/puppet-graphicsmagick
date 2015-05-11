# == Class: graphicsmagick::install
#
# Installs GraphicsMagick base packages
#
class graphicsmagick::install {
  
  package{$graphicsmagick::params::base_packages:
    ensure => $graphicsmagick::package_ensure,
  }
  
  include graphicsmagick::dev
  
  include graphicsmagick::dbg
}
