FROM python:3.10-alpine

WORKDIR /app

RUN pip install flask
RUN pip install requests

ADD . /app

EXPOSE 8081

ENTRYPOINT [ "python3" ]
CMD ["APIcon/api.py"]