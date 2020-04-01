FROM node:alpine

# ame-templates
WORKDIR /app
COPY ./ame-templates/vue-vuetify-mobile/package.json /app/ame-templates/vue-vuetify-mobile/
WORKDIR /app/ame-templates/vue-vuetify-mobile
RUN npm install --registry=https://registry.npm.taobao.org

ADD ./ame-templates/vue-vuetify-mobile /app/ame-templates/vue-vuetify-mobile/
RUN npm run build

# ame-components
WORKDIR /app
ADD ./ame-components-dist /app/ame-components-dist/

# ame-server
WORKDIR /app
RUN mkdir /app/ame-server
COPY ./ame-server/package.json /app/ame-server/
WORKDIR /app/ame-server
RUN npm install --registry=https://registry.npm.taobao.org

ADD ./ame-server /app/ame-server/

CMD [ "npm", "run", "dev" ]
# CMD [ "sleep", "infinity" ]

EXPOSE 7001
