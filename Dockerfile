FROM node:10.14.0
#LABEL maintainer="Satish_korlapati"
# Set the working dir when our container executes
WORKDIR /usr/src/site
# Install app dependencies
COPY package.json ./
#COPY yarn.lock ./
#RUN yarn install --production
# Install our packages
RUN npm install
WORKDIR ./client
RUN npm install
# Copy the rest of our application and Bundle app source
COPY . /usr/src/site
EXPOSE 3000
WORKDIR /usr/src/site
#RUN npm run dev
CMD ["npm","run dev"]
