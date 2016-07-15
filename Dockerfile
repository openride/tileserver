FROM node:6-slim
RUN mkdir /tiles
WORKDIR /tiles
RUN npm install -g tileserver-gl-light
# RUN curl -o tiles.mbtiles https://osm2vectortiles-downloads.os.zhdk.cloud.switch.ch/v2.0/planet.mbtiles
# RUN curl -o tiles0           -r0-10000000000 https://osm2vectortiles-downloads.os.zhdk.cloud.switch.ch/v2.0/planet.mbtiles
# RUN curl -o tiles1 -r10000000001-20000000000 https://osm2vectortiles-downloads.os.zhdk.cloud.switch.ch/v2.0/planet.mbtiles
# RUN curl -o tiles2 -r20000000001-30000000000 https://osm2vectortiles-downloads.os.zhdk.cloud.switch.ch/v2.0/planet.mbtiles
# RUN curl -o tiles3 -r30000000001-40000000000 https://osm2vectortiles-downloads.os.zhdk.cloud.switch.ch/v2.0/planet.mbtiles
# RUN curl -o tiles4 -r40000000001-50000000000 https://osm2vectortiles-downloads.os.zhdk.cloud.switch.ch/v2.0/planet.mbtiles
# RUN curl -o tiles5 -r50000000001-            https://osm2vectortiles-downloads.os.zhdk.cloud.switch.ch/v2.0/planet.mbtiles
# RUN cat tiles0 tiles1 tiles2 tiles3 tiles4 tiles5 > tiles.mbtiles
CMD tileserver-gl-light tiles.mbtiles
