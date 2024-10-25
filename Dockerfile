From ubuntu 

RUN apt-get update 
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN apt-get install -y python3-flask

copy ./root/app
ENTRYPOINT FLASK_APP=/opt/app/application.py flask run
