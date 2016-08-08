FROM rails:5.0.0
MAINTAINER Davide Bove <me@davidebove.com>

ADD ./src /code
WORKDIR /code
ENV BUNDLE_PATH /box

CMD ["/bin/bash"]
