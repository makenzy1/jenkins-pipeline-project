# This Dockerfile is used to containerize the application

# Dockerfile

# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Run the tests
RUN python -m unittest discover -s tests

# Run app.py when the container launches
CMD ["python", "app/main.py"]