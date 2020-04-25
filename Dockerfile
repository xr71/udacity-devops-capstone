FROM python:3.8-buster

COPY . /app
WORKDIR /app
RUN make install

EXPOSE 80

CMD ["python3", "flasgger-app/app.py"]
