install:
	pip install -U pip && pip install -r requirements.txt
lint:
	pylint --disable=R,C flasgger-app/app.py
	hadolint --ignore DL3013 Dockerfile
run:
	python flasgger-app/app.py
