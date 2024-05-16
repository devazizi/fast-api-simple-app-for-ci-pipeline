FROM python:3.10.14-alpine3.19

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY . /code/app

CMD ["fastapi", "run", "code/main.py", "--port", "80", "--host", "0.0.0.0"]