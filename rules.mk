%: %.tmpl
	sed  "s/@VERSION@/$(VERSION)/; " < $< > $@

.PHONY: build
build: Dockerfile 
	NO_CACHE=false; \
	docker build --no-cache=$$NO_CACHE -t $(IMAGE_REPO)/$(IMAGE_NAME):$(VERSION) .
