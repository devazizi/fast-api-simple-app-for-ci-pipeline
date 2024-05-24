FROM python:3.10.14-alpine3.19

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

COPY . /app

CMD ["fastapi", "run", "./main.py", "--port", "80", "--host", "0.0.0.0"]