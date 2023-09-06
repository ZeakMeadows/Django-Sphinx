# Use an official Python runtime as a parent image
FROM python:3.8

# Set environment variables for Python
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory inside the container
WORKDIR /app

# Copy the Django project files into the container
COPY . /app/

# Install system dependencies, if any
# Example: RUN apt-get update && apt-get install -y <package-name>

# Install Python dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Set up Sphinx, if you have Sphinx documentation
# Example: RUN cd /app/docs && make html

# Expose the port the application will run on
EXPOSE 8000

# Start the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
