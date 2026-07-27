# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy only requirement-equivalent installs (to keep it simple and lightweight)
RUN pip install --no-cache-dir flask

# Copy the current directory contents into the container
COPY app.py .

# Expose port 5000 for the Flask app
EXPOSE 5000

# Run app.py when the container launches
CMD ["python", "app.py"]