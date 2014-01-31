# pandorafms

This is the pandorafms module.

# Requirements

* Puppetlabs/stdlib

# Installation

  puppet module install seattle-biomed/pandorafms

# Synopsis

  Install and manage pandorafms service.

# Parameters

- *config_ensure* (Default: 'present')
- *config_options* (Default: Empty)
- *package_ensure* (Default: 'true')
- *service_ensure* (Default: 'running')
- *service_enable* (Default: 'true')

# Examples

Basic Installation

  include '::pandorafms'

Parameterized Installation

  $config_options = {
    option => value
  }

  class { '::pandorafms':
    config_ensure  => 'present',
    config_options => $config_options,
    package_ensure => 'true',
    service_ensure => 'running',
    service_enable => 'true',
  }

Installation with Hiera

  ---
  class:  - pandorafms
  pandorafms::config::ensure:  'present'
  pandorafms::config::options:
    option: value
  pandorafms::package::ensure:  'true'
  pandorafms::service::ensure:  'running'
  pandorafms::service::enable:  'true'

# License

  See LICENSE

# Contact


# Support

Please log tickets and issues at our [Projects site](https://github.com/seattle-biomed/pandorafms)
