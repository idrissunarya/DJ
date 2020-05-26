FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app
RUN /bin/sh -c pip3 install -r requirements.txt
COPY . /app/
ENTRYPOINT ["python3"]
CMD ["manage.py" "runserver" "0.0.0.0:8000"]