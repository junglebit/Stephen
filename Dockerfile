FROM node:8.9

WORKDIR /usr/src

COPY package*.json ./

RUN npm install
RUN npm install -g @angular/cli
#RUN npm install npm@latest -g
#RUN npm install -g typescript
#RUN apt-get install nodejs

COPY . .

CMD ng serve 
