# Use an official Python image from Docker Hub as the base
FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app/

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Specify the command to run when the container starts
CMD ["python", "app.py"]
