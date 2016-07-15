FROM node:6-slim
RUN mkdir /tiles
WORKDIR /tiles
RUN curl -o tiles.mbtiles https://osm2vectortiles-downloads.os.zhdk.cloud.switch.ch/v2.0/planet_z0-z5.mbtiles
RUN npm install -g tileserver-gl-light
CMD tileserver-gl-light tiles.mbtiles
