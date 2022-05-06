FROM debian:bullseye

RUN apt update && \
  apt install -y build-essential wget

# The SML/NJ install script installs itself in the dir where
# it is executed.
WORKDIR /sml

RUN wget http://smlnj.cs.uchicago.edu/dist/working/110.99.2/config.tgz && \
  tar -xzf config.tgz && \
  config/install.sh

FROM debian:bullseye
COPY --from=0 /sml /sml/
ENV PATH /sml/bin:$PATH
