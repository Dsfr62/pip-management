pktadd: # add one package
	pip install ${name}
	pip freeze > requirements.txt

pktrm: # remove one instaled package
	pip uninstall ${name}

pktrma: # remove all instaled packages
	pip uninstall -y -r <(pip freeze)

pktls: # show instaled packages
	pip freeze

pkti: # install dependencies
	pip install -r requirements.txt