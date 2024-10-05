# Stage 1: Build the React app
FROM node:20-slim AS build

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install --frozen-lockfile

# Copy the rest of the application code excluding node_modules
COPY . .

#adding ENV variables

# Build the React application
RUN yarn run build

# Expose port 3000 to the outside world
EXPOSE 3000

# Start the application
CMD ["yarn", "start"]
