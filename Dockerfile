# pull official base image
FROM node:lts-alpine

# set working directory
WORKDIR /app

# install app dependencies
COPY package.json ./
RUN npm install

# add app
COPY . .

# start app
CMD ["npm", "start"]
EXPOSE 3000

#FROM node:lts-alpine
#WORKDIR /app
#
#COPY package.json ./
#RUN npm install
#
#COPY src .
#COPY public .
#COPY public/index.html .
#
#CMD ["npm", "start"]
#EXPOSE 3000