# == Class: pandorafms
#
# Full description of class pandorafms is in the README.
#
class pandorafms::server::config (
  $user         = $pandorafms::pandora_user,
  $ensure       = $pandorafms::server::config_ensure,
  $options      = $pandorafms::server::config_options,
  $db_name      = $pandorafms::server::db_name,
  $db_username  = $pandorafms::server::db_username,
  $db_password  = $pandorafms::server::db_password,
  $db_host      = $pandorafms::server::db_host,
  $config_dir   = $pandorafms::server::config_dir,
  $config_file  = $pandorafms::server::config_file,
  $master       = true,
) {
  file { "${config_dir}/${config_file}":
    ensure  => $ensure,
    mode    => '0440',
    owner   => $user,
    content => template('pandorafms/pandora_server.conf.erb')
  }
}

