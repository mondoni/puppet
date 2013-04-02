########################################################################################
# Importa os arquivos .pp para que o puppet possa encontrar as classes declaradas.
########################################################################################
import 'fedora.pp'
import 'centos.pp'
import 'epel.pp'
import 'integrasul.pp'
import 'puias.pp'

########################################################################################
# Classe que verifica a distro e sua versão para adicionar
# os repositorios corretamente.
########################################################################################

class verifica_distro {
	#
	# Fedora
	#
    if $operatingsystem == "Fedora" {
        include localrepo_fedora

	#
	# PUIAS
	#
    } elsif $lsbdistid == "PUIAS" {
        include localrepo_puias

        # adiciona repositorio EPEL nas distros Enterprise Linux
        if $lsbmajdistrelease == "5" {
            include localrepo_epel_five
        } elsif $lsbmajdistrelease == "6" {
            include localrepo_epel_six
        }

	#
	# CentOS
	#
    } elsif $operatingsystem == "CentOS" {
        include localrepo_centos

        # adiciona repositorio EPEL nas distros Enterprise Linux
        if $lsbmajdistrelease == "5" {
            include localrepo_epel_five
        } elsif $lsbmajdistrelease == "6" {
            include localrepo_epel_six
        }

	#
	# Red Hat
	#
    } elsif $operatingsystem == "RedHat" {
        # adiciona repositorio EPEL nas distros Enterprise Linux
        if $lsbmajdistrelease == "5" {
            include localrepo_epel_five
        } elsif $lsbmajdistrelease == "6" {
            include localrepo_epel_six
        }
    }
}
