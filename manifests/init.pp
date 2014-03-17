#
# == Class: package
#
# The package class mange
#
# === Parameters
#
# This class does not take parameters as all parameters are fetched via hiera
# The parameter defaults are stored in the package::data class
#
# === Variables
#
# No variables are used in the package base class
#
# === Examples
#
#  class { package: }
#
# === Authors
#
# Stefan Goethals <stefan.goethals@super-visions.com>
#
# === Copyright
#
# Copyright 2012 Super-Visions, unless otherwise noted.
#
class package ( 
  $packages = hiera_hash('packages', {} ) 
)
{
  notify { ":${packages}:": }
  validate_hash( $packages )
  if( $packages )
  {
    create_resources( package, $packages )
  }
}
