FROM node:16-bullseye-slim
ENV NODE_ENV=production
WORKDIR /usr/src/app
COPY --chown=node:node dist/ .
# COPY ["package.json", "package-lock.json*", "./"]
# RUN npm install
# RUN npm run build
EXPOSE 8080
CMD [ "node", "lib/server.js" ]