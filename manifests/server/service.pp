# == Class: pandorafms
#
# Full description of class pandorafms is in the README.
#
class pandorafms::server::service (
  $ensure   = $pandorafms::server::service_ensure,
  $enable   = $pandorafms::server::service_enable,
  $service  = $pandorafms::server::service_name,
) {
  service { $service:
    ensure => $ensure,
    enable => $enable,
  }
}
