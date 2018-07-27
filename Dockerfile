FROM python:3.7-slim
WORKDIR /app
EXPOSE 5000

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_APP=app.py 
ENV FLASK_ENV=development
CMD ["flask", "run", "--host=0.0.0.0"]
