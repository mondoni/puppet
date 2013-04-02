########################################################################################
# Classe default principal. Nela se incluem classes com configuracoes que serao
# realizadas em multiplos ou todos os hosts.
########################################################################################
class defaultClass {
	include verifica_distro,
			pacotes_linustec,
			ssh_keys
}

########################################################################################
# Classe que esta sendo utilizada para testar o gerenciamento de chaves SSH,
# apos os testes, a configuracao das chaves SSH se aplicara a todos os hosts.
########################################################################################
class ssh_keys {
    case $hostname {
		# Local Servers
        'aristeu','afrodite','agamenon','apolo','atena',
		'ateneu','aurora','baco','cronos','diomedes',
		'dionisio','edipo','fortuna','helios','mapguide',
		'medusa','orion','perseu','poseidon',

		# Firewall Servers
		'vulcano','hefesto',

		# DMZ Servers
		'atlas','hades','hermes','minotauro',
		'morfeu','proteu','venus','zeus':   { include ssh }
    }
}

########################################################################################
# Classe que verifica se sera instalado pacotes rpm da Integrasul no host
# para configurar o repositorio YUM da Integrasul.
########################################################################################
class pacotes_linustec {
    case $hostname {
        'atlas','cronos','hermes','poseidon',
		'proteu','zeus': { include repo_linustec }
	}
}
