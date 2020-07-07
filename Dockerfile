FROM ubuntu:20.04

WORKDIR /app

# Python installation
RUN apt-get update --fix-missing && apt-get install -y python3 \
 python3-dev \
 python3-pip \
 python python-all \
 libffi-dev \
 build-essential \
 libssl-dev \
 curl \
&& rm -rf /var/lib/apt/lists/*

RUN apt-get update --fix-missing

COPY . /app
RUN chmod +x startapp.sh 

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

CMD [ "./startapp.sh" ]