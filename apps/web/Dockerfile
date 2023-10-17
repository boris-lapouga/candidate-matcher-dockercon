# Use an official Node.js runtime as a parent image
FROM node:18.16.0 as builder

WORKDIR /app

COPY ./pnpm-workspace.yaml .
COPY ./packages ./packages
COPY ./apps/web ./apps/web

# Set work directory
WORKDIR /app/apps/web

# Install pnpm
RUN npm install -g pnpm
# Install pnpm and turbo
RUN npm install -g pnpm turbo

# Set the SHELL environment variable
ENV SHELL=/bin/bash

RUN pnpm setup

# Install dependencies
RUN pnpm install

FROM node:18.16.0

# Install pnpm in the final image
RUN npm install -g pnpm
# Install pnpm and turbo
RUN npm install -g pnpm turbo

WORKDIR /app

COPY --from=builder /app/apps/web .

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Run the app when the container launches
CMD ["pnpm", "dev", "--filter", "./apps/web"]