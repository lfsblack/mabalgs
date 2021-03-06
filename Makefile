clean:
	rm -rf pytest_cache/
	rm -rf dist/
	rm -rf mabalgs.egg-info/

build:
	python setup.py sdist

setup:
	pip install bandit
	pip install -r requirements.txt
	pip install -r requirements_test.txt

deploy: clean build
	twine upload dist/*

check-vuln:
	bandit -r .