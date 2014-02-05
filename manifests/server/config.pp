# == Class: pandorafms
#
# Full description of class pandorafms is in the README.
#
class pandorafms::server::config (
  $ensure       = $pandorafms::config_ensure,
  $options      = $pandorafms::config_options,
  $db_name      = $pandorafms::db_name,
  $db_username  = $pandorafms::db_username,
  $db_password  = $pandorafms::db_password,
  $db_host      = $pandorafms::db_host,
  $config_file  = '/etc/pandora/pandora_server.conf',
  $master       = true,
) {
  file { $config_file:
    ensure  => $ensure,
    mode    => '0440',
    content => template('pandorafms/pandora_server.conf.erb')
  }
}

