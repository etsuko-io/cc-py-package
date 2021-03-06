test:
	python -m pytest -vv

format:
	black .
	isort .
	flake8

make-venv:
	pyenv virtualenv 3.10.2 venv-cc-py-package && pyenv local venv-cc-py-package

activate-venv:
	pyenv local venv-cc-py-package

install:
	pip install -r requirements/base.txt

install-local:
	pip install -r requirements/extra.txt
