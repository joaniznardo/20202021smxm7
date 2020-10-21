THISDIR := $(notdir $(CURDIR))
PROJECT := $(THISDIR)

##
##
##
up: ## passa/sincronitza el directory dmzc amb la màquina virtual dmzc
	rsync   -e "ssh  -J user1@172.16.169.128" --rsync-path="sudo  rsync" -azv   dmzc/ user1@10.5.1.12:/

up_tunnel_edition: ## passa/sincronitza el directory dmzc amb la màquina virtual dmza
	rsync   -e "ssh  -p 2288" --rsync-path="sudo  rsync" -azv   dmzc/ user1@localhost:/

down: ## còpia de seguretat/sincronitza de a màquina virtual al directori dmzc 
	rsync -azv  --files-from=./dmzc-extract -e "ssh -J user1@172.16.169.128"  user1@10.5.1.12:/ dmzc

down_tunnel_edition: ## còpia de seguretat/sincronitza de a màquina virtual al directori dmzc
	rsync -azv  --files-from=./dmzc-extract -e "ssh -p 22288"  user1@localhost:/ dmzc

## list make targets
## https://stackoverflow.com/questions/4219255/how-do-you-get-the-list-of-targets-in-a-makefile
list:
	@$(MAKE) -pRrq -f $(lastword $(MAKEFILE_LIST)) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'

