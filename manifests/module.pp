# == Class: pandorafms
#
# Full description of class pandorafms is in the README.
#
# http://wiki.pandorafms.com/index.php?title=Pandora:Documentation_en:Configuration#Modules_definition
# module_begin, module_name, and module_end are automatic and shouldn't be in the options hash.
#
# FIXME, a module may have multiple conditions using the same option name in the options hash.

define pandorafms::module (
  $ensure       = 'present',
  $options      = hash([]),
  $user         = $pandorafms::pandora_user,
  $module_dir   = $pandorafms::module_dir,
) {

  file { "${module_dir}/${title}.conf":
    ensure  => $ensure,
    mode    => '0440',
    content => template('pandorafms/module.conf.erb'),
    require => Class['::pandorafms::config'],
    notify  => Class['::pandorafms::service'],
  }

}

