.PHONY: install brew

install:
	bash install.sh

brew:
	brew bundle dump --force --file=macos/Brewfile
