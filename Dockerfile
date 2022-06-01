FROM node:16.15.0

# Copy server
WORKDIR /app
COPY package.json .
COPY yarn.lock .
COPY server.js .
COPY .pnp.cjs .
COPY .pnp.loader.mjs .
COPY .yarnrc.yml .yarnrc.yml
COPY .yarn/ .yarn/

# Install dependencies
RUN yarn install

# Expose server port
EXPOSE 8080

# Add start command
ENTRYPOINT [ "yarn", "node" ]
CMD [ "server" ]