# Use official Node image
FROM node:18

# Create app directory inside container
WORKDIR /app

# Copy package files first (better caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all source code
COPY . .

# Expose application port (change if needed)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
