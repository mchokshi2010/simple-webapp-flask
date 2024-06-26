FROM ubuntu:16.04
#FROM ubuntu:latest
#RUN apt-get update && apt-get install -y python python3-pip
RUN apt-get update
RUN apt-get install -y python python3-pip
RUN python3 --version
RUN pip3 --version
#RUN pip install --upgrade pip
RUN pip3 install flask
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
