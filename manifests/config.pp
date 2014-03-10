# == Class: pandorafms
#
# Full description of class pandorafms is in the README.
#
class pandorafms::config (
  $server       = $pandorafms::master_server,
  $ensure       = $pandorafms::config_ensure,
  $options      = $pandorafms::config_options,
  $config_file  = $pandorafms::config_file,
  $config_dir   = $pandorafms::config_dir,
  $module_dir   = $pandorafms::module_dir,
) {

  file { "${config_dir}/${config_file}":
    ensure  => $ensure,
    mode    => '0440',
    content => template('pandorafms/pandora_agent.conf.erb')
  }

  file { $module_dir:
    ensure  => 'directory',
    mode    => '0440',
  }

}

