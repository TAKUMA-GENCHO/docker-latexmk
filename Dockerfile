FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt upgrade -y && apt install -y tzdata
ENV TZ=Asia/Tokyo

RUN apt install -y \
      git \
      vim \
      tmux

RUN apt install -y \
      texlive-lang-japanese \
      texlive-lang-cjk \
      texlive-fonts-recommended \
      texlive-fonts-extra \
      latexmk

ENV HOME /home/user      
RUN mkdir /home/user
COPY .latexmkrc /home/user/
