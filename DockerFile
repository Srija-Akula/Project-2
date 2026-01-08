# Use official Python runtime
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Install dependencies
COPY Requirements.Txt .
RUN pip install --upgrade pip
RUN pip install -r Requirements.Txt

# Copy project files
COPY . .

# Collect static files
RUN python manage.py collectstatic --noinput

# Apply migrations
RUN python manage.py migrate

# Expose port
EXPOSE 8000

# Start server
CMD ["gunicorn", "projectname.wsgi:application", "--bind", "0.0.0.0:8000"]
