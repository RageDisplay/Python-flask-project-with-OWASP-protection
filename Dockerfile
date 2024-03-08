FROM python:3.11-alpine

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY /static/styles/. /app/static/styles

COPY /templates/. /app/templates

COPY . /app

CMD ["python", "app.py"]

