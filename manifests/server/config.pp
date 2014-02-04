# == Class: pandorafms
#
# Full description of class pandorafms is in the README.
#
class pandorafms::config (
  $ensure       = $pandorafms::config_ensure,
  $options      = $pandorafms::config_options,
  $config_file  = '/etc/pandora/pandora_server.conf',
  $db_name      = 'pandora',
  $db_username  = 'pandora',
  $db_password  = undef,
  $db_host      = 'localhost',
  $master       = true,
) {
  file { $config_file:
    ensure  => $ensure,
    mode    => '0440',
    content => template('pandorafms/pandora_server.conf.erb')
  }
}

