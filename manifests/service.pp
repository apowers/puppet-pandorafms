# == Class: pandorafms
#
# Full description of class pandorafms is in the README.
#
class pandorafms::service (
  $ensure       = $pandorafms::service_ensure,
  $enable       = $pandorafms::service_enable,
  $service_name = $pandorafms::service_name,
) {
  service { $service_name:
    ensure => $ensure,
    enable => $enable,
  }
}
