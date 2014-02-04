# == Class: pandorafms
#
# Full description of class pandorafms is in the README.
#
class pandorafms::service (
  $ensure       = $pandorafms::service_ensure,
  $enable       = $pandorafms::service_enable,
  $service_name = 'pandora_agent_daemon',
#  $service_name = 'pandora-agent', # for ubuntu package
) {
  service { $pandorafms::params::service_name:
    ensure => $ensure,
    enable => $enable,
  }
}
