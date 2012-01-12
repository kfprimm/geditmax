.PHONY: install

ifeq ($(GTK),)
	echo "GTK variable not set. Run 'make GTK=2.0' or 'make GTK=3.0', depending on your version."
	exit
endif

DIR=~/.local/share/gtksourceview-$(GTK)

install:
	mkdir --parents $(DIR)
	cd $(DIR) && mkdir -p styles language-specs
	cp blitzmax.lang $(DIR)/language-specs
	cp MaxIDE.xml $(DIR)/styles
