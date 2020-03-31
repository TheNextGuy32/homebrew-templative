refresh: clear
	brew tap thenextguy32/homebrew-templative
	brew install templative

audit:
	brew audit --new-formula templative

clear:
	sudo rm '/usr/local/bin/templative'
	brew uninstall templative

upload: 
	git add .
	git commit -m "Do the thing"
	git push origin master
	brew tap thenextguy32/homebrew-templative
	brew audit --new-formula templative
	brew install templative

release: clear upload

install:
	brew install templative

sniff: 
	pipenv --rm
	pipenv install $(package)
	pipenv run pip show $(package)
	pipenv --rm 
	rm Pipfile
	rm Pipfile.lock
	