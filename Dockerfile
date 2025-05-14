FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Make sure devDependencies are installed
ENV NODE_ENV=development

# Install all dependencies, including Vite
RUN npm install

# Copy the rest of the app
COPY . .

# Expose Vite dev server port
EXPOSE 5173

# Run Vite dev server and bind to 0.0.0.0
CMD ["npm", "run", "dev", "--", "--host"]
