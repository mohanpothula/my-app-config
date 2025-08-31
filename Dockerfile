# Use the official Python slim image as a base
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file first (for better caching)
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY app.py .

# Tell the container what command to run when it starts
CMD ["python", "app.py"]
