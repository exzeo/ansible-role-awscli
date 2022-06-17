lint:
	yamllint .
	ansible-lint .

test: lint
	MOLECULE_NO_LOG="true" molecule test --all