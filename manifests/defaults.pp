# == Class: pandorafms
#
# Full description of class pandorafms is in the README.
#
class pandorafms::defaults {
  # Agent Defaults
  $config_directory =  $::osfamily ? {
    'Debian' => '/etc/pandora',
    default  => fail('unsupported platform')
  }

  $module_directory = "${config_directory}/modules.d"

  $package_name = $::osfamily ? {
    'Debian' => 'pandorafms-agent',
    default  => fail('unsupported platform')
  }
  $service_name = $::osfamily ? {
    'Debian' => 'pandora-agent',
    default  => fail('unsupported platform')
  }
  $config_file  = 'pandora_agent.conf'

  # Server Defaults
  $pandora_user =  $::osfamily ? {
    'Debian' => 'pandora',
    default  => 'pandora',
  }
  $server_config_file  = $::osfamily ? {
    'Debian' => 'pandorafms.conf',
    default  => fail('unsupported platform')
  }
  $server_package_name = $::osfamily ? {
    'Debian' => 'pandorafms-server',
    default  => fail('unsupported platform')
  }
  $server_service_name = $::osfamily ? {
    'Debian' => 'pandora_server',
    default  => fail('unsupported platform')
  }

  # Console Defaults
  $console_package_name = $::osfamily ? {
    'Debian' => 'pandorafms-console',
    default  => fail('unsupported platform')
  }

  # Tentacle Server Defaults
  $tentacle_service_name = $::osfamily ? {
    'Debian' => 'tentacle_serverd',
    default  => fail('unsupported platform')
  }

}
