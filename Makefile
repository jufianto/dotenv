
.DEFAULT_GOAL := hello 

install-xammp:
	@sh install/install-xampp.sh

setting:
	@sh setting.sh

hello: tesh.sh
	@echo "Hello World"

install-chrome:
	@sh install/install-chrome.sh

backup-dotenv:
	@echo "Copy .vimrc to folder scripts"
	@\cp ~/.vimrc scripts/

restore-dotenv:
	@echo "Restore .vimrc" 
	@\cp scripts/.vimrc ~/
