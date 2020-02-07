FROM python:3.7-slim

ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000
ENV FLASK_APP=app.py
ENTRYPOINT ["/app/entrypoint.sh"]
CMD ["flask", "run", "-h", "0.0.0.0"]
