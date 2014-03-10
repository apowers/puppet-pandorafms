# == Class: pandorafms
#
# Full description of class pandorafms is in the README.
#
class pandorafms::server::package (
  $ensure       = $pandorafms::server::package_ensure,
  $package_name = $pandorafms::server::package_name,
) {
  package { $package_name: ensure => $ensure, }
}
