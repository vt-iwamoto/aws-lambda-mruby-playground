FROM lambci/lambda:build-nodejs8.10

RUN curl -Lo ruby-install-0.7.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.7.0.tar.gz
RUN tar -xzvf ruby-install-0.7.0.tar.gz
WORKDIR ruby-install-0.7.0
RUN make install

RUN ruby-install ruby 2.5.3
RUN ln -s /opt/rubies/ruby-2.5.3/bin/ruby /usr/local/bin/ruby

RUN ruby-install mruby 1.4.1
RUN ln -s /opt/rubies/mruby-1.4.1/bin/mrbc /usr/local/bin/mrbc
