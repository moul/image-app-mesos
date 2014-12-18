DOCKER_NAMESPACE =	armbuild/
NAME =			ocs-app-mesos
VERSION =		latest
VERSION_ALIASES =	15.04 vivid 0.21.0
TITLE =			Mesos
DESCRIPTION =		Mesos
#DOC_URL =		https://doc.cloud.online.net/applications/mesos.html
SOURCE_URL =		https://github.com/online-labs/image-app-mesos


## Image tools  (https://github.com/online-labs/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/image-tools | bash
-include docker-rules.mk
## Below you can add custom makefile commands and overrides
