    FROM ruby:2.6.5
    RUN apt-get update && \
        apt-get install -y mysql-client nodejs --no-install-recommends && \
        rm -rf /var/lib/apt/lists/*

    RUN mkdir /Books

    WORKDIR /Books

    ADD Gemfile /Books/Gemfile
    ADD Gemfile.lock /Books/Gemfile.lock

    RUN gem install bundler
    RUN bundle install

    ADD . /Books