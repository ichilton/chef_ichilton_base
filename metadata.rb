name             'ichilton_base'
maintainer       'Ian Chilton'
maintainer_email 'ian@ichilton.co.uk'
license          'All rights reserved'
description      'Chef cookbook containing base setup common to all nodes.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

supports 'ubuntu'

depends 'apt'
depends 'resolver'
depends 'timezone'
depends 'ntp'
depends 'build-essential'
depends 'sudo'
depends 'postfix'
