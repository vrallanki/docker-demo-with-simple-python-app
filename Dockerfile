FROM python:2.7
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 80
VOLUME ["/app-data"]
CMD gunicorn -b : -c gunicorn.conf.py main:app
