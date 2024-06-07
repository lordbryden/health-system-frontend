# Use the official Node.js image.
FROM node:18

# Create and set the working directory.
WORKDIR /usr/src/app

# Install the Ionic CLI globally.
RUN npm install -g @ionic/cli

# Copy package.json and package-lock.json to the working directory.
COPY package*.json ./

# Install project dependencies.
RUN npm install

# Copy the rest of the project files to the working directory.
COPY . .

# Expose the port the app runs on.
EXPOSE 8100

# Serve the Ionic app.
CMD ["ionic", "serve", "--host", "0.0.0.0", "--port", "8100"]
