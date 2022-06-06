FROM node:16.15.0

# Build arguments
ARG BUILD_DATE
ARG BUILD_VERSION
ARG BUILD_NAME
ARG VCS_REF

# Container labeling for public repository: http://label-schema.org/rc1/
LABEL org.label-schema.schema-version="1.0" \
      org.label-schema.name="${BUILD_NAME}" \
      org.label-schema.description="A NodeJS Server vulnerable to JavaScript prototype pollution attacks" \
      org.label-schema.build-date="${BUILD_DATE}" \
      org.label-schema.version="${BUILD_VERSION}" \
      org.label-schema.url="https://gitlab.com/richardnagy/security/protopoll" \
      org.label-schema.vcs-url="https://gitlab.com/richardnagy/security/protopoll" \
      org.label-schema.vcs-ref="${VCS_REF}" \
      org.label-schema.docker.cmd="docker run -p 8080:8080 -d --rm ${BUILD_NAME}"

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
