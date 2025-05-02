FROM node:16

# Install Docker
RUN apt-get update && apt-get install -y docker.io && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy package files
COPY package*.json ./
COPY . .

# Install dependencies
RUN npm install

# Expose port 5000
EXPOSE 5000

# Start the application
CMD ["node", "app.js"]