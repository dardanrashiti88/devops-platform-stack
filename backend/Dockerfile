FROM python:3.9-slim

WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files
COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
