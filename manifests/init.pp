# == Class: graphicsmagick
#
# Entry point for GraphicsMagick module
#
# === Parameters
#
# [*package_ensure*]
#   Passed directly on to Puppet's `package` type `ensure` parameter. Defaults to `present`.
#
#
# [*package_ensure_dev*]
#   Whether to include development libraries. eg., `libgraphicsmagick1-dev`. Passed directly on to Puppet's `package` type `ensure` parameter. Defaults to `absent`.
#
#
# [*package_ensure_dbg*]
#   Whether to include debug symbols. eg., `graphicsmagick-dbg`. Passed directly on to Puppet's `package` type `ensure` parameter. Defaults to `absent`.
#
# === Examples
#
# class {'graphicsmagick':
#   package_ensure     => '1.3.18-1ubuntu3', # specify a version
#   package_ensure_dev => '1.3.18-1ubuntu3', # install development libraries
#   package_ensure_dbg => '1.3.18-1ubuntu3', # install debug symbols
# }
#
class graphicsmagick (
    $package_ensure     = $graphicsmagick::params::package_ensure,
    $package_ensure_dev = $graphicsmagick::params::package_ensure_dev,
    $package_ensure_dbg = $graphicsmagick::params::package_ensure_dbg,
  ) inherits graphicsmagick::params {
    
    validate_string($package_ensure)
    validate_string($package_ensure_dev)
    validate_string($package_ensure_dbg)
    
    include graphicsmagick::install
    
}
