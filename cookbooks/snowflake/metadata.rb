name             'snowflake'
maintainer       'Shaun'
maintainer_email 'shaun@ninefold.com'
license          'All rights reserved'
description      'Installs/Configures snowflake'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.3'

supports "ubuntu", "12.04"

depends "motd", "0.4.1"
depends "apache2", "1.8.4"