setup:
	python3 -m venv ~/.MLOpsAI
	source ~/.MLOpsAI/bin/activate

install:
	pip install --upgrade pip &&\
	  pip install -r requirements.txt

test:
	python -m pytest -vv -cov=hello ./UnitTest/hello_test.py

lint:
	pylint --disable R,C ./UnitTest/hello.py	