FROM ubuntu

RUN apt update && apt install ssh -y && apt install hugo -y && apt install git -y
RUN mkdir -p ~/.ssh && chmod 700 ~/.ssh
RUN echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
RUN echo -e "Host *\n\tLogLevel ERROR\n\n" >> ~/.ssh/config
RUN echo -e "Host *\n\tUserKnownHostsFile /dev/null\n\n" >> ~/.ssh/config
