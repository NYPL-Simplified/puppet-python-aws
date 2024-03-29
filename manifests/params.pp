
# Class: python::params
# The python Module default configuration settings.
#
class python::params {
  $version                = 'system'
  $pip                    = true
  $dev                    = false
  $package_name           = 'python'
  $virtualenv             = false
  $gunicorn               = false
  $manage_gunicorn        = true
  $provider               = undef
  $valid_versions = $::osfamily ? {
    'RedHat' => ['27', '3'],
    'Debian' => ['3', '3.3'],
  }
}
