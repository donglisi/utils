PREFIX=/usr
BINDIR=$(PREFIX)/bin

all:
	@echo "Run 'make install' for installation."
	@echo "Run 'make uninstall' for uninstallation."

install:
	install -Dm755 qemu-wrapper $(BINDIR)/qemu-wrapper
	install -Dm755 qemu-wrapper-if* /etc/

uninstall:
	rm -f $(BINDIR)/qemu-wrapper
	rm -f /etc/qemu-wrapper-if*
