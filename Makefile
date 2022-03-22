all:
	ansible-playbook site.yml

verbose:
	ansible-playbook -v site.yml
