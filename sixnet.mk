export BUILD_DIR ?= $(PWD)
ALLOW_WARNINGS:=1 
include $(BUILD_DIR)/rules/common.mk

COMPONENT := tiobench

STAGING_DIR ?= $(STAGING)/$(COMPONENT)

CONFIGURE_OPT = \
	$(CONFIGURE_OPT_$(ARCH))

$(shell echo "**** Building $(COMPONENT) for $(PROD) ****" >&2)

.PHONY: all build clean install

all: install

build:
	CC="$(CC)" CFLAGS="$(CFLAGS)" LINK="$(CC)" $(MAKE) -j $(MAKE_JOBS)

clean:
	$(MAKE) clean

install: build
	-rm -fr $(STAGING_DIR)
	mkdir -p $(STAGING_DIR)
	$(MAKE) DESTDIR=$(STAGING_DIR) install
