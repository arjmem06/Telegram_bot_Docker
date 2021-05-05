FROM python:3.6-slim-buster

WORKDIR /app

COPY . /app

RUN pip3 install -r requirements.txt

CMD python3 -m bot
