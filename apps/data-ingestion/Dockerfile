# Use Python 3.11
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Install Pipenv
RUN pip install pipenv

# Copy Pipfile
COPY Pipfile /app/

# Install dependencies and generate Pipfile.lock
RUN pipenv lock --pre
RUN pipenv install --deploy --ignore-pipfile

# Copy the source code
COPY ./src /app/src

# Expose port 80
EXPOSE 80

# Run the application
CMD ["pipenv", "run", "python", "src/main.py"]
