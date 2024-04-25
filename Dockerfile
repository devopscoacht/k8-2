# Use the official Python image as the base image
FROM python:3.11.9-bullseye

# Set a working directory in the container
WORKDIR /usr/src/app

# Copy current directory contianer into the container at usr/srec/app
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# I will make port 5000 available to the world from the container
EXPOSE 5000

# Define Environment variable
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Command to run application using uvicorn
CMD ["flask" , "run"]