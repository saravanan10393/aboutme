FROM node:latest

RUN useradd --user-group --create-home --shell /bin/false sara

ENV HOME=/home/sara

COPY package.json npm-shrinkwrap.json gruntfile.js bower.json .bowerrc $HOME/mysite/

RUN chown -R sara:sara $HOME/*

USER sara

WORKDIR $HOME/mysite

RUN npm install


CMD ["npm","start"]


