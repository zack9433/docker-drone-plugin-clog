FROM rust:1.24.1

LABEL author="Zack Yang <zack9433@gmail.com>"

RUN cargo install clog-cli

ADD drone-clog.sh /bin/

ENTRYPOINT /bin/drone-clog.sh

