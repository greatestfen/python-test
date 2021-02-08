FROM ubuntu:14.04
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
COPY src/requirements.txt .
RUN pip install -r requirements.txt
COPY src/ /opt/webapp
WORKDIR /opt/webapp
EXPOSE 5000
CMD [ "python", "app.py"]