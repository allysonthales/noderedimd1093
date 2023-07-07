FROM nodered/node-red
RUN npm i node-red-dashboard
RUN npm i node-red-node-random
RUN npm i node-red-contrib-schedex
RUN npm i node-red-contrib-telegrambot
RUN npm i node-red-node-openweathermap
