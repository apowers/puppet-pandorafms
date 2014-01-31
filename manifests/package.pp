# == Class: pandorafms
#
# Full description of class pandorafms is in the README.
#
class pandorafms::package (
  $ensure = $pandorafms::package_ensure
) {
  include pandorafms::params
  package { $pandorafms::params::package_name:
    ensure => $ensure,
  }
}
