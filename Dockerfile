# Python ka base image use karte hain
FROM python:3.12.2-slim

# Working directory ko set karte hain
WORKDIR /app

# Requirements file ko copy karte hain
COPY requirements.txt /app/

# Dependencies install karte hain
RUN pip install --no-cache-dir -r requirements.txt

# Apna code copy karte hain
COPY . /app/

# Port ko expose karte hain (agar app 4000 pe run hota hai)
EXPOSE 4000

# App ko run karte hain
CMD ["python", "main.py"]
