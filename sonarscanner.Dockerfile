FROM newtmitch/sonar-scanner:3.0.3-alpine
COPY . /root/src
RUN apk add --no-cache nodejs nodejs-npm
RUN npm i -g typescript && npm cache clean
ENV NODE_PATH /usr/lib/node_modules
CMD sonar-scanner -Dsonar.projectBaseDir=/root/src
 