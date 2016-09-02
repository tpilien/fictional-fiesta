FROM node:4.5.0

RUN apt-get update -qq && apt-get install -y build-essential

ENV APP_HOME /app/fictional-fiesta
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

COPY ./src/package.json $APP_HOME
RUN npm install

COPY ./src $APP_HOME

EXPOSE 8080
CMD [ "npm", "start" ]
