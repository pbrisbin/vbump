NAME = vbump
PREFIX ?= /usr/local

test:
	cram test

install:
	install -Dm755 bin/vbump $(DESTDIR)/$(PREFIX)/bin/vbump

uninstall:
	$(RM) $(DESTDIR)/$(PREFIX)/bin/vbump

release:
	mkaurball
	chruby-exec system -- aur-submit $(NAME)-git-0.0.0-1.src.tar.gz
	$(RM) -rf $(NAME)-git-0.0.0-1.src.tar.gz

distcheck:
	makepkg --clean --install
	$(RM) -rf vbump
	$(RM) -rf vbump-*.pkg.tar.zst

.PHONY: test install uninstall pkgver release distcheck
