# Use Node.js base image
FROM node:22-alpine

# Set working directory
WORKDIR /app

# Copy package files first
COPY package.json package-lock.json ./

# Install dependencies using npm
RUN npm install

# Copy the rest of the application (excluding node_modules via .dockerignore)
COPY . .

# Expose Vite dev server port
EXPOSE 5173

# Optional: React/Vite hot reload fix for containers
ENV CHOKIDAR_USEPOLLING=true

# Start the development server
CMD ["npm", "run", "dev"]
