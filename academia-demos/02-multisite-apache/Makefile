THISDIR := $(notdir $(CURDIR))
PROJECT := $(THISDIR)

##
##
##
up: ## passa/sincronitza el directory dmza amb la màquina virtual dmza
	rsync   -e "ssh  -p 22288" --rsync-path="sudo  rsync" -azv   dmza/ user1@localhost:/

down: ## còpia de seguretat/sincronitza de a màquina virtual al directori dmza
	rsync -azv  --files-from=./dmza-extract -e "ssh -p 22288"  user1@localhost:/ dmza

## list make targets
## https://stackoverflow.com/questions/4219255/how-do-you-get-the-list-of-targets-in-a-makefile
list:
	@$(MAKE) -pRrq -f $(lastword $(MAKEFILE_LIST)) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'

