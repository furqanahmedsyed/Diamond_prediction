FROM python:3.8-slim-buster
WORKDIR /app
COPY . /app      

RUN apt update -y

RUN apt-get update && pip install -r requirements.txt
CMD ["python3", "app.py"]

#cell 1: docker is fetching the python 3.8 image from the docker hub
#CELL 3.  WE ARE Pushing the app from the local directory ( .) to app directory (/app:- to app directory)
#cell 2.  We are setting the app as working directory