#!/bin/bash

echo "Task: Automate Docker Commands with Bash Script with Bash Script:"

# Steps of creation Dockerfile
echo "FROM python:3.8" > Dockerfile
echo "WORKDIR /app" >> Dockerfile
echo "COPY . /app" >> Dockerfile

# Step 2: Installing Django
echo "RUN pip3 install django" >> Dockerfile

# Step 3: Copy files into the container
cp -r /djangoTestingApp* .

# Step 4: Running Django migrations
echo "Running Django migrations..."
echo "RUN python manage.py migrate" >> Dockerfile

# Step 5: Set the CMD to run the server
echo 'CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]' >> Dockerfile

# Step 6: Build and run Docker container
sudo docker build -t django .

echo "Running Docker container..."
sudo docker run -p 8001:8001 django