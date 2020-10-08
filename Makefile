# Build images

REPOSITORY ?= ellistarn
IMAGES ?= debug

all:
	for image in $(IMAGES); do \
		docker build $$image -t ${REPOSITORY}/$$image; \
		docker push ${REPOSITORY}/$$image; \
	done
