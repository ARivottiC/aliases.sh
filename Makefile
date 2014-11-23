TARGET_DIR  = $(HOME)/.bash_aliases.d
TARGET_FILE = "$(HOME)/.bash_aliases"

usage:
	@echo "usage: make (install|uninstall)"

install: $(TARGET_DIR) $(TARGET_FILE);

uninstall:
	rm -rf $(TARGET_DIR)
	sed -i '\:${TARGET_DIR}:d' $(TARGET_FILE)

$(TARGET_DIR):
	git clone https://github.com/ARivottiC/aliases.sh.git $@
	cd $@ && git config core.fileMode false

$(TARGET_FILE):
	echo 'for x in $$(find ${TARGET_DIR} -type f -name "*.sh" -perm -555 | LC_COLLATE=C sort); do . "$$x"; done' >> $@

.PHONY: ;
# vim:noet:sw=4:ts=4
