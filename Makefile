DOCKER  = docker
VERSION = 0.0.1
REPO    = anuragpaliwal80/locust_exporter

.PHONY: docker-image
docker-image:
	@$(DOCKER) build --rm -t $(REPO):$(VERSION) .
	@$(DOCKER) tag $(REPO):$(VERSION) $(REPO):latest

.PHONY: docker-push
docker-push:
	@$(DOCKER) push $(REPO):$(VERSION) 
	@$(DOCKER) push $(REPO):latest
