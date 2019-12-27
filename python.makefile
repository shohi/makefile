# Makefile for python project

clean: check-venv
	# uninstall package
	python3 setup.py develop --uninstall

	# remove executable
	rm -f venv/bin/daily

	rm -rf "report.egg-info"

develop: check-venv
	python3 setup.py develop

check-venv:
ifndef VIRTUAL_ENV 
	$(error VIRTUAL_ENV is undefined)
endif
