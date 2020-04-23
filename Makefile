install:
	pip install -U pip && pip install -r requirements.txt
lint:
	pylint --disable=R,C flasgger-app/app.py
run:
	python flasgger-app/app.py
