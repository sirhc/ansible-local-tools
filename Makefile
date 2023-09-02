GITHUB_TOKEN = $(file < .github_token)
PLAYBOOK     = tools.yml

export GITHUB_TOKEN

all:
	ansible-playbook $(PLAYBOOK)

verbose:
	ansible-playbook -v $(PLAYBOOK)

debug:
	ansible-playbook -vv $(PLAYBOOK)
