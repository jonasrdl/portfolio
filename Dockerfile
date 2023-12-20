# Use an official Node.js LTS image as the base image
FROM node:latest AS builder

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available) to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the Vite app for production
RUN npm run build

# Use a lightweight Node.js image for serving the app
FROM node:current-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the built app from the builder stage
COPY --from=builder /app/dist ./dist

# Install serve globally
RUN npm install -g serve

# Expose the port that serve will use
EXPOSE 3000

# Command to run the app
CMD ["serve", "-s", "dist"]
