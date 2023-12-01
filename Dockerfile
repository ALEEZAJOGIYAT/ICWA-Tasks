FROM python:3.8
WORKDIR /app
COPY . /app
RUN pip3 install django
RUN python manage.py migrate
CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]
