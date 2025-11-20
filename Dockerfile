FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the project files
COPY . .

# Expose the port the app runs on
EXPOSE 8000

# Start the application
# CMD ["gunicorn", "--bind", "0.0.0.0:8000", "smartnotes.wsgi:application"]
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]