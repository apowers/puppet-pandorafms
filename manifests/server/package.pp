# == Class: pandorafms
#
# Full description of class pandorafms is in the README.
#
class pandorafms::package (
  $ensure       = $pandorafms::package_ensure,
  $package_name = 'pandorafms-server'
) {
  package { $package_name: ensure => $ensure, }
}
