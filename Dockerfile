FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .
RUN apt-get update && apt-get upgrade -y
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "app.py"]