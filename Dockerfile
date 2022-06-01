FROM node:16.15.0

# Copy server
WORKDIR /app
COPY package.json .
COPY yarn.lock .
COPY server.js .

# Install dependencies
RUN yarn install

# Expose server port
EXPOSE 8080

# Add start command
ENTRYPOINT [ "node" ]
CMD [ "server" ]