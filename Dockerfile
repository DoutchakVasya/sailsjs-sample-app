FROM node:8

# install sails
RUN npm install sails -g
ADD . /app
WORKDIR app
## expose port for future sails lift
EXPOSE 1337
CMD ["sails","lift"]