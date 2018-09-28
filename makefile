IMAGE := docker.dragonfly.co.nz/minimal-project
RUN ?= docker run $(INTERACT) --rm -v $$(pwd):/work -w /work -u $(UID):$(GID) $(IMAGE)
UID ?= $(shell id -u)
GID ?= $(shell id -g)
INTERACT ?= 
GIT_TAG ?= $(shell git log --oneline | head -n1 | awk '{print $$1}')

.PHONY: docker
docker:
	docker build --tag $(IMAGE):$(GIT_TAG) .
	docker tag $(IMAGE):$(GIT_TAG) $(IMAGE):latest

.PHONY: enter
enter: INTERACT=-it
enter:
	$(RUN) bash

.PHONY: enter-root
enter-root: INTERACT=-it
enter-root: UID=root
enter-root: GID=root
enter-root:
	$(RUN) bash

.PHONY: inspect-variables
inspect-variables:
	@echo IMAGE:    $(IMAGE)
	@echo RUN:      $(RUN)
	@echo UID:      $(UID)
	@echo GID:      $(GID)
	@echo INTERACT: $(INTERACT)
	@echo GIT_TAG:  $(GIT_TAG)
