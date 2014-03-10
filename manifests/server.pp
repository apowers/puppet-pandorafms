# == Class: pandorafms
#
# Full description of class pandorafms is in the README.
#
class pandorafms::server (
  $config_ensure    = 'present',
  $config_options   = hash([]),
  $package_ensure   = 'installed',
  $console_ensure   = 'installed',
  $service_ensure   = 'running',
  $service_enable   = true,
  $db_name          = 'pandora',
  $db_username      = 'pandora',
  $db_password      = undef,
  $db_host          = 'localhost',
  $tentacle_ensure  = 'running',
  $tentacle_enable  = true,
  $pandora_user     = $pandorafms::defaults::pandora_user,
  $service_name     = $pandorafms::defaults::server_service_name,
  $package_name     = $pandorafms::defaults::server_package_name,
  $config_dir       = $pandorafms::defaults::config_directory,
  $config_file      = $pandorafms::defaults::server_config_file,
  $console_package  = $pandorafms::defaults::console_package_name,
  $tentacle_service = $pandorafms::defaults::tentacle_service_name,
) inherits pandorafms::defaults {
  anchor { '::pandorafms::server::begin': } ->
  class  { '::pandorafms::server::package': } ->
  class  { '::pandorafms::server::config': } ~>
  class  { '::pandorafms::server::service': } ->
  anchor { '::pandorafms::server::end': }
}
