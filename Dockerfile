FROM rails:4.2.6
MAINTAINER Davide Bove <me@davidebove.com>

ADD ./src /code
WORKDIR /code
ENV BUNDLE_PATH /box

CMD /bin/bash
