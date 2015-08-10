ENV = $(CURDIR)/env
PIP = $(ENV)/bin/pip
PYTHON = $(ENV)/bin/python
MANAGE = $(PYTHON) tutorial/manage.py

env:
	virtualenv $(ENV)

deps: env
	$(PIP) install -U pip wheel
	$(PIP) install -r requirements.txt

serve:
	$(MANAGE) runserver

clean:
	rm -rf $(ENV)

.PHONY: deps clean serve
