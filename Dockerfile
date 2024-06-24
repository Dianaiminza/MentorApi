# Use the official Node.js image
FROM node:14

# Create and change to the app directory
WORKDIR /Mentor

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .


# Expose the port the app runs on
EXPOSE 80
EXPOSE 443

# Command to run the application
CMD ["node", "index.js"]
