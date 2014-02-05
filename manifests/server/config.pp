# == Class: pandorafms
#
# Full description of class pandorafms is in the README.
#
class pandorafms::server::config (
  $ensure       = $pandorafms::server::config_ensure,
  $options      = $pandorafms::server::config_options,
  $db_name      = $pandorafms::server::db_name,
  $db_username  = $pandorafms::server::db_username,
  $db_password  = $pandorafms::server::db_password,
  $db_host      = $pandorafms::server::db_host,
  $config_file  = '/etc/pandora/pandora_server.conf',
  $master       = true,
) {
  file { $config_file:
    ensure  => $ensure,
    mode    => '0440',
    content => template('pandorafms/pandora_server.conf.erb')
  }
}

