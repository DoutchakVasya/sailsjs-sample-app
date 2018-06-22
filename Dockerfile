FROM node:8

RUN npm install sails -g
ADD . /app
WORKDIR app
RUN npm install
## expose port for future sails lift
EXPOSE 1337
CMD ["sails","lift"]
