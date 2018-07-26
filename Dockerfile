FROM python:3.7-slim
WORKDIR /app
EXPOSE 5000

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .
RUN export FLASK_APP=app.py
CMD ["flask", "run"]
