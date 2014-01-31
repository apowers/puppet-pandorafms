# == Class: pandorafms
#
# Full description of class pandorafms is in the README.
#
class pandorafms::params {
  $package_name = 'pandorafms'
  $config_file  = 'pandorafms/etc/pandorafms.conf'
  $service_name = $::osfamily ? {
    'Debian' => 'pandorafms',
    'RedHat' => 'pandorafms',
    default  => fail('unsupported platform')
  }
}
