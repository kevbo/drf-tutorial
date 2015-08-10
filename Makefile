env:
	virtualenv env

deps: env
	env/bin/pip install -U pip wheel
	env/bin/pip install -r requirements.txt

clean:
	rm -rf env

.PHONY: deps clean
