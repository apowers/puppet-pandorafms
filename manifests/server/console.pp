# == Class: pandorafms
#
# Full description of class pandorafms is in the README.
#
class pandorafms::server::package (
  $ensure       = $pandorafms::server::console_ensure,
  $package_name = 'pandorafms-console'
) {
  package { $package_name:
    ensure => $ensure,
  }
}
