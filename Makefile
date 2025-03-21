.PHONY: run

run:
		ansible-playbook -i localhost, -c local playbooks/$(filter-out $@,$(MAKECMDGOALS)).yml

%:
		@:
