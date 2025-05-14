# Stage 1: Build
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Expose the Vite dev server port
EXPOSE 5173

# Run the dev server with proper host binding
CMD ["npm", "run", "dev", "--", "--host"]
