# == Class: pandorafms
#
# Full description of class pandorafms is in the README.
#
class pandorafms::server::service (
  $ensure   = $pandorafms::service_ensure,
  $enable   = $pandorafms::service_enable,
  $service  = 'pandora_server'
) {
  service { $service:
    ensure => $ensure,
    enable => $enable,
  }
}
