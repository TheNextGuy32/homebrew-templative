

audit:
	brew audit --new-formula templative

fetch:
	brew tap thenextguy32/homebrew-templative
	brew fetch $(package) --build-from-source

upload: 
	git add .
	git commit -m "Do the thing"
	git push origin master

install:
	brew tap thenextguy32/homebrew-templative
	brew install templative

release: upload install

clear:
	if [ -d '/usr/local/bin/templative']
		sudo rm '/usr/local/bin/templative'

uninstall: clear
	brew uninstall templative

logs:
	cp /Users/oliverbarnum/Library/Logs/Homebrew/templative/26.pip log

refresh: clear install

sha:
	brew create $(url) --python
	sudo rm /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core/Formula/templative.rb