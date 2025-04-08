# Use an official Python runtime as a parent image
FROM python:3.9  

# Set the working directory in the container
WORKDIR /app  

# Copy the current directory contents into the container at /app
COPY . .  

# Install the dependencies
RUN pip install -r requirements.txt  

# Make port 5000 available to the world outside this container
EXPOSE 5000  

# Define environment variable
ENV FLASK_APP=app.py

# Run the application
CMD ["python", "app.py"]
