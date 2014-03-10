# == Class: pandorafms
#
# Full description of class pandorafms is in the README.
#
# Implement an API call.
# http://wiki.pandorafms.com/index.php?title=Pandora:Documentation_en:Annex_ExternalAPI
#
# FIXME: Find a way to determine if the api returns an error code or completes the command successfully.
#
define pandorafms::api (
  $api_uri      = "http://${pandorafms::master_server}/include/api.php",
  $apipass      = undef,
  $user         = undef,
  $password     = undef,
  $action       = 'get',
  $option       = 'test',
  $id           = undef,
  $id2          = undef,
  $other        = undef,
  $other_mode   = 'url_encode_separator_|',
  $return_type  = undef,
  $other_params = undef,
) {

  ensure_resource (package,'wget',{ ensure => 'installed' } )

  $api_auth_string  = "apipass=${apipass}&user=${user}&pass=${password}"
  $api_id_string    = "id=${id}&id2=${id2}"
  $api_other_string = "other=${other}&other_mode=${other_mode}"

#  notify { "/usr/bin/wget -O /tmp/${title} -nc \'${api_uri}?op=${action}&op2=${option}&${api_auth_string}&${api_id_string}&${api_other_string}&${other_params}\'": }

  exec { "pandorafms-api-${title}":
    command => "/usr/bin/wget -O /tmp/${title} -nc \'${api_uri}?op=${action}&op2=${option}&${api_auth_string}&${api_id_string}&${api_other_string}&${other_params}\'",
    creates => "/tmp/${title}",
    require => Package['wget'],
  }

}

