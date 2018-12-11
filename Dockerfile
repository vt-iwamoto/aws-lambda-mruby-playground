FROM lambci/lambda:build-nodejs8.10

RUN curl -Lo ruby-install-0.7.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.7.0.tar.gz
RUN tar -xzvf ruby-install-0.7.0.tar.gz
WORKDIR ruby-install-0.7.0
RUN make install

RUN ruby-install ruby 2.5.3
RUN ln -s /opt/rubies/ruby-2.5.3/bin/ruby /usr/local/bin/ruby
RUN ln -s /opt/rubies/ruby-2.5.3/bin/rake /usr/local/bin/rake

WORKDIR ..
RUN curl -Lo mruby-2.0.0.zip https://github.com/mruby/mruby/archive/2.0.0.zip
RUN unzip mruby-2.0.0.zip
WORKDIR mruby-2.0.0
COPY build_config.rb /var/task/mruby-2.0.0/build_config.rb
RUN rake
RUN ln -s /var/task/mruby-2.0.0/bin/mrbc /usr/local/bin/mrbc
