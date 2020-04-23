FROM python:3.7

ADD . /app
WORKDIR /app

RUN pip install -U --no-cache-dir pip && \
    pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["python3", "flasgger-app/app.py"]

