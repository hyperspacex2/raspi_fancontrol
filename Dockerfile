# syntax=docker/dockerfile:1
FROM python:3.7-alpine
WORKDIR /code
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers

#COPY remote files at working directory to container
COPY run-fan.py run-fan.py
COPY requirements.txt requirements.txt

#install linux packages
RUN apk add --no-cache raspberrypi

RUN pip install -r requirements.txt
CMD [ "python", "./run-fan.py"]