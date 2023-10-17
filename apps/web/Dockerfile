# Use an official Node.js runtime as a parent image
FROM node:18.16.0

# Set work directory
WORKDIR /app
ENV SHELL=/bin/bash

# Install pnpm
RUN npm install -g pnpm

RUN pnpm setup

# Copy all
COPY . .

# Install dependencies
RUN pnpm install



# Make port 3000 available to the world outside this container
EXPOSE 3000

# Run the app when the container launches
CMD ["pnpm", "dev"]