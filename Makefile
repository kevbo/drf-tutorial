ENV = $(CURDIR)\env
PIP = $(ENV)\bin\pip

env:
	virtualenv $(ENV)

deps: env
	$(PIP) install -U pip wheel
	$(PIP) install -r requirements.txt

clean:
	rm -rf $(ENV)

.PHONY: deps clean
