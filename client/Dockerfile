FROM node:20.11-alpine3.18 as build

WORKDIR /usr/src/app

# Copy package.json and package-lock.json separately to take advantage of Docker layer caching
COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

FROM node:20.11-alpine3.18 as production

WORKDIR /usr/src/app

# Copy only the necessary files from the build stage
COPY --from=build /usr/src/app/build ./build

# Expose the port on which the app will run (adjust as needed)
EXPOSE 80

# Install serve to serve the production build
RUN npm install -g serve

# Define the command to serve the app
CMD ["serve", "-s", "build", "-p", "80"]
