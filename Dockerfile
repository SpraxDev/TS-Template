FROM node:18-alpine

RUN apk --no-cache -U upgrade && \
    npm i -g npm --update-notifier false && \
    npm cache clean --force

##
# App
##
WORKDIR /app/

COPY package.json package-lock.json ./

ENV NODE_ENV=production
RUN npm i && \
    npm cache clean --force

COPY dist/ ./dist/

# CMD ["node", "--enable-source-maps", "dist/main.js"]
CMD ["node", "dist/main.js"]
