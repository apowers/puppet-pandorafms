# == Class: pandorafms
#
# Full description of class pandorafms is in the README.
#
class pandorafms::service (
  $ensure = $pandorafms::service_ensure,
  $enable = $pandorafms::service_enable
) {
  include pandorafms::params
  service { $pandorafms::params::service_name:
    ensure => $ensure,
    enable => $enable,
  }
}
