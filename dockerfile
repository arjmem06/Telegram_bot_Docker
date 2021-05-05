FROM python:3.6-slim-buster

WORKDIR /app

COPY . /app

RUN pip3 install -r requirements.txt

#ENV BBOT_TOKEN = "1789981869:AAFumqOzMcvNtyRqL-k_itoTcfYcIXTWWtM"

CMD python3 -m bot