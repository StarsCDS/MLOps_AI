setup:
	python3 -m venv ../.MLOpsAI
	# source ../.MLOpsAI/bin/activate

install:
	pip install --upgrade pip &&\
	  pip install -r requirements.txt
	dvc pull -r origin
	