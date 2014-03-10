# == Class: pandorafms
#
# Full description of class pandorafms is in the README.
#
class pandorafms (
  $master_server  = undef,
  $config_ensure  = 'present',
  $config_options = hash([]),
  $package_ensure = 'installed',
  $service_ensure = 'running',
  $service_enable = true,
  $service_name   = $pandorafms::defaults::service_name,
  $package_name   = $pandorafms::defaults::package_name,
  $config_file    = $pandorafms::defaults::config_file,
  $config_dir     = $pandorafms::defaults::config_directory,
  $module_dir     = $pandorafms::defaults::module_directory,
) inherits pandorafms::defaults {

  anchor {'pandorafms::begin':   } ->
  class  {'pandorafms::package': } ->
  class  {'pandorafms::config':  } ~>
  class  {'pandorafms::service': } ->
  anchor {'pandorafms::end': }

}
