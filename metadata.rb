name             'sensu_chef'
maintainer       'The Authors'
maintainer_email 'you@example.com'
license          'all_rights'
description      'Installs/Configures sensu via chef'
long_description 'Installs/Configures sensu via chef'
version          '0.1.0'

depends 'chef-vault'
depends 'sensu', '= 2.11.0'
depends 'uchiwa', '= 1.2.0'
depends 'yum'
