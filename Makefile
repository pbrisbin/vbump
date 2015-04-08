NAME = vbump
VERSION = 0.0.0
PREFIX ?= /usr/local

test:
	cram test

install:
	install -Dm755 bin/vbump $(DESTDIR)/$(PREFIX)/bin/vbump

uninstall:
	$(RM) $(DESTDIR)/$(PREFIX)/bin/vbump

.PHONY: test install uninstall
