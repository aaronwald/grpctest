# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install grpcio grpcio-tools

# Make port 5000 available to the world outside this container
EXPOSE 50051

# Define environment variable
ENV NAME=World

# Run app.py when the container launches
CMD ["python", "server.py"]
