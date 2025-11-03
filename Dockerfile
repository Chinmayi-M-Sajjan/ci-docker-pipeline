# Use Python 3.10 slim image
FROM python:3.10-slim

# Set working directory inside the container
WORKDIR /app

# Copy all files into the container
COPY . .

# Install dependencies (safe even if requirements.txt is empty)
RUN pip install --no-cache-dir -r requirements.txt

# Run the application
CMD ["python", "app.py"]
