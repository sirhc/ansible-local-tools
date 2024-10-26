all:

tools:
	ansible-playbook tools.yml

libraries:
	curl -fssL https://raw.githubusercontent.com/QueraTeam/ansible-github/refs/heads/main/plugins/modules/install_from_github.py > library/install_from_github.py
