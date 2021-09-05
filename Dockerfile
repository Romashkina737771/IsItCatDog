FROM python:3.7

RUN mkdir -p /

WORKDIR /

COPY ./requirements.txt /./requirements.txt

RUN pip3 install -r ./requirements.txt

COPY ./app /

CMD ["python3", "app.py"]
