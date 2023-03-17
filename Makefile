brew:
	brew bundle dump --file=- > Brewfile_tmp
	sort Brewfile Brewfile_tmp | uniq | tac > Brewfile
	rm -rdf Brewfile_tmp

format:
	autopep8 --in-place --recursive .
