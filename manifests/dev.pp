# Public: Installs iTerm2 beta
#
# Usage:
#
#   include iterm2::dev
#
# or with specific version
#
#   class { 'iterm2::dev':
#     version => '20140421'
#   }
class iterm2::dev($major = '2_0_0', $version = '20150412') {
  $join = ''
  if ($version != '') and ($major != '') {
    $join = '_'
  }
  
  package { 'iTerm':
    source   => "https://iterm2.com/downloads/beta/iTerm2-${major}${join}${version}.zip",
    provider => 'compressed_app'
  }
}
