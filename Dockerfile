FROM python:3.9
WORKDIR /app

COPY requirements.txt /app/
RUN pip3 install -r requirements.txt

COPY . /app

 RUN flask run -h 0.0.0.0 -p 10000 & python3 main.py
