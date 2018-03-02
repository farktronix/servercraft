FROM node:9.4.0-alpine

COPY lib /lib
COPY \
  package-lock.json \
  package.json \
  proxy.js \
  /

RUN ["npm", "install"]

EXPOSE 25565
CMD ["node", "proxy.js"]
