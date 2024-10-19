SHELL    = zsh
PLAYBOOK = site.yml

export GITHUB_TOKEN

all:
	ansible-playbook $(PLAYBOOK)

verbose:
	ansible-playbook -v $(PLAYBOOK)

debug:
	ansible-playbook -vv $(PLAYBOOK)

update:
	curl -fssL https://raw.githubusercontent.com/QueraTeam/ansible-github/refs/heads/main/plugins/modules/install_from_github.py > library/install_from_github.py
