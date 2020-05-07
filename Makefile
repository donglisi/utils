PREFIX=/usr
BINDIR=$(PREFIX)/bin

all:
	@echo "Run 'make install' for installation."
	@echo "Run 'make uninstall' for uninstallation."

install:
	install -Dm755 qemu-wrapper $(DESTDIR)$(BINDIR)/
	install -Dm755 qemu-wrapper-if* $(DESTDIR)/etc/

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/qemu-wrapper
	rm -f $(DESTDIR)/etc/qemu-wrapper-if*
