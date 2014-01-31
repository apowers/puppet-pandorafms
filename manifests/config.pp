# == Class: pandorafms
#
# Full description of class pandorafms is in the README.
#
class pandorafms::config (
    $ensure   = $pandorafms::config_ensure,
    $options  = $pandorafms::config_options,
) {
  include pandorafms::params
  file { $pandorafms::params::config_file:
    ensure  => $ensure,
    mode    => '0440',
    content => template('pandorafms/pandorafms.conf.erb')
  }
}

