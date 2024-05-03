FROM ubuntu:20.04
WORKDIR /opt/fivem/
RUN apt-get update && apt install -y wget xz-utils
RUN wget https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/5742-ded89bc6acf29a720a7686a1de70d28b62c75af8/fx.tar.xz
RUN tar -xf fx.tar.xz

ENTRYPOINT [ "/opt/fivem/run.sh" ]