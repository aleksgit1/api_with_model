FROM python:3.11-slim

WORKDIR /app
 
RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

COPY ./requirements.txt /app
RUN pip install -r requirements.txt

COPY . /app

CMD ["python3", "app_api.py", "--host", "0.0.0.0", "--port", "8000"]


