IMAGE_REPO := jkhelil
IMAGE_NAME :=$(notdir $(patsubst %/,%,$(CURDIR)))
GIT_VERSION := $(shell git describe --tags --dirty --always)
DATETIME_VERSION := $(shell date '+%Y.%m.%d_%H.%M.%S')
VERSION := $(GIT_VERSION)-$(DATETIME_VERSION)
