FROM node:14
RUN apt-get update && apt-get install -y git
WORKDIR /usr/src/app/
RUN git clone https://github.com/zossama/node-express-hello-world.git
WORKDIR /usr/src/app/node-express-hello-world
RUN npm install
EXPOSE 3000
CMD ["node", "app.js"]