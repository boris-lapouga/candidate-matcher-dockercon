# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set work directory
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

# Copy the current directory contents into the container at /app
COPY . /app/

# Run the app
CMD ["pipenv", "run", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]