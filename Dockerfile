FROM python:3.12.2-slim
WORKDIR /app
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app/
EXPOSE 4000
CMD ["python", "main.py"]
