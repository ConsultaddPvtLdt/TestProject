FROM ubuntu:18.04
RUN apt-get update && apt-get upgrade -y
RUN apt-get install python -y
RUN apt-get install python-pip -y
COPY ./pgm1.py .
COPY ./requirement.txt .
RUN pip install -r requirement.txt
ENTRYPOINT [ "python" ]
CMD [ "pgm1.py" ]
