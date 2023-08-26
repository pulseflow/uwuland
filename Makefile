PREFIX ?= /usr
SYSCONFDIR ?= /etc
BINDIR = $(PREFIX)/bin
SHAREDIR = $(PREFIX)/share

APPNAME = uwuland
TARGET = release
DEBUG ?= 0

TARGET_BIN = $(DESTDIR)$(BINDIR)/$(APPNAME)
TARGET_LIB = $(DESTDIR)$(SHAREDIR)/$(APPNAME)/

ifeq ($(DEBUG),0)
	TARGET = release
	ARGS += --release
endif

all: $(APPNAME)

$(APPNAME):
	cargo build $(ARGS)

clean:
	cargo clean

install: $(APPNAME) install_lib
	install -Dm0755 "target/$(TARGET)/$(APPNAME)" "$(TARGET_BIN)"

install_lib:
	mkdir -p "$(TARGET_LIB)"

uninstall:
	rm -f "$(TARGET_BIN)"
	rm -rf "$(TARGET_LIB)"

.PHONY: all clean install uninstall
