#setup:
#	python3 -m venv ~/.data-eng-venv
	
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

#test:
#	python -m pytest -vv --cov=data-eng-venv test/*.py
#	python -m pytest --nbval notebook.ipynb
	
lint:
	pylint --disable=R,C data-eng-venv.py
	
all: install lint test

