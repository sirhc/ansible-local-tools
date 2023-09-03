SHELL        = zsh
PLAYBOOK     = tools.yml
GITHUB_TOKEN = $(file < .github_token)

export GITHUB_TOKEN

all:
	ansible-playbook $(PLAYBOOK)

verbose:
	ansible-playbook -v $(PLAYBOOK)

debug:
	ansible-playbook -vv $(PLAYBOOK)

# Allow running tags with just `make $tool`.
%:
	ansible-playbook --tags $@ $(PLAYBOOK)
