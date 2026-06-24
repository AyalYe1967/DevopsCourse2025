FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
ENV FLASK_APP=flaskr
ENV FLASK_ENV=development
EXPOSE 5000
CMD ["sh", "-c", "flask init-db && flask run --host=0.0.0.0"]
