# Use official Node.js image as the base image
FROM node:22-alpine

# Set the working directory in the container
WORKDIR /app

# Install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Build the Next.js app
RUN npm run build

# Expose the port the app will run on
EXPOSE 3001

# Start the Next.js app
CMD ["npm", "start"]
