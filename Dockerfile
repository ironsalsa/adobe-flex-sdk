FROM sgrio/ant

RUN apt-get update && apt-get install -y git gawk zip wget && \
  rm -rf /tmp/*

RUN mkdir -p /opt/adobeflex && mkdir -p /build

RUN wget http://download.macromedia.com/pub/flex/sdk/flex_sdk_4.6.zip

RUN unzip flex_sdk_4.6.zip -d /opt/adobeflex/460

CMD [ "/bin/bash" ]
