FROM node
RUN mkdir /app
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
RUN npm install -g @angular/cli
RUN ng build
From tomcat
COPY /app/dist/angularCalc /usr/local/tomcat/webapps/
