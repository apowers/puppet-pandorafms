# == Class: pandorafms
#
# Full description of class pandorafms is in the README.
#
class pandorafms::package (
  $ensure       = $pandorafms::package_ensure,
  $package_name = 'pandorafms-agent-unix',
#  $package_name = 'pandorafms-agent', # for Ubuntu package
) {
  package { $pandorafms::params::package_name:
    ensure => $ensure,
  }
}
