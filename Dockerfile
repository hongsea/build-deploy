FROM ubuntu

RUN apt update && apt install ssh -y && apt install hugo -y && apt install git -y && apt install rsync -y
RUN mkdir -p ~/.ssh && chmod 700 ~/.ssh
RUN echo "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
RUN echo "Host *\n\tLogLevel ERROR\n\n" >> ~/.ssh/config
RUN echo "Host *\n\tUserKnownHostsFile /dev/null\n\n" >> ~/.ssh/config

RUN apt install --yes nodejs
RUN apt install --yes npm
