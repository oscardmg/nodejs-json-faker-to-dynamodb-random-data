FROM node:16-alpine
 
WORKDIR /usr/src/app

 
COPY package*.json .
  
RUN npm install --only=prod
 
COPY . .

CMD [ "npm", "start" ]

# docker build --platform=linux/amd64 -t insert-data-common-storage . 
# docker run --rm --name insert-data-common-storage insert-data-common-storage
