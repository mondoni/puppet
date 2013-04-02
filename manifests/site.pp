########################################################################
# Variable with the puppet server hostname to be used with .pp files
########################################################################

$puppetserver = 'puppet.linustec.com.br'

########################################################################
# Modules that will be loaded
########################################################################

import '../modules/default/manifests/init.pp'
import '../modules/repo/manifests/init.pp'
import '../modules/ssh/manifests/init.pp'
import 'nodes.pp'

########################################################################
#
########################################################################
