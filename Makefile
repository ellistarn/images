# Build images

REPOSITORY ?= ellistarn
IMAGES ?= debug

all:
	for image in $(IMAGES); do \
		DOCKER_BUILDKIT=1 docker build --no-cache --ssh default -t ${REPOSITORY}/$$image $$image; \
		docker push ${REPOSITORY}/$$image; \
	done
