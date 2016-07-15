FROM node:6-slim
RUN mkdir /tiles
WORKDIR /tiles
RUN npm install -g tileserver-gl-light
RUN curl -o tiles.mbtiles https://osm2vectortiles-downloads.os.zhdk.cloud.switch.ch/v2.0/planet.mbtiles
CMD tileserver-gl-light tiles.mbtiles
