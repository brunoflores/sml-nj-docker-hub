FROM ubuntu:latest
RUN wget http://smlnj.cs.uchicago.edu/dist/working/110.99.2/config.tgz && \
  tar -xzf config.tgz && \
  config/install.sh
