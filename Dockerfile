
FROM ubuntu:20.04


LABEL developer="Parham Nooralishahi"
LABEL email="parham.nooralishahi@gmail.com"

ARG DEBIAN_FRONTEND=noninteractive

ENV TZ=America/Edmonton

RUN apt-get update && apt-get install -y apt-transport-https
RUN apt-get remove python-* && apt-get autoremove

RUN apt-get install -y git wget zip build-essential cmake sysvbanner curl

RUN apt-get install -y python3 python3-dev python3-pip

RUN mkdir -p ~/Softwares && cd ~/Softwares/ && curl -LJO https://developer.arm.com/-/media/Files/downloads/gnu/13.3.rel1/binrel/arm-gnu-toolchain-13.3.rel1-x86_64-aarch64-none-linux-gnu.tar.xz && \
tar -xvf arm-gnu-toolchain-13.3.rel1-x86_64-aarch64-none-linux-gnu.tar.xz && \
echo "export PATH=$PATH:/root/Softwares/arm-gnu-toolchain-13.3.rel1-x86_64-aarch64-none-linux-gnu/bin" >> ~/.bashrc

RUN mkdir -p ~/Developments && cd ~/Developments/ && git clone https://github.com/cu-ecen-aeld/assignment-2-parham.git

