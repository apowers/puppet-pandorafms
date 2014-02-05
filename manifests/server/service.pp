# == Class: pandorafms
#
# Full description of class pandorafms is in the README.
#
class pandorafms::server::service (
  $ensure   = $pandorafms::server::service_ensure,
  $enable   = $pandorafms::server::service_enable,
  $service  = 'pandora_server'
) {
  service { $service:
    ensure => $ensure,
    enable => $enable,
  }
}
