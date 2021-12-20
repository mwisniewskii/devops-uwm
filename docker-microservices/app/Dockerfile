FROM tiangolo/uvicorn-gunicorn:python3.8
WORKDIR /code
COPY ./requirements.txt /code/requirements.txt
RUN apt-get update && apt-get -y install libpq-dev gcc && pip install psycopg2
RUN pip install -r requirements.txt
COPY . /code/app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0","--port", "5555"]


