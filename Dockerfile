FROM openjdk:8

ENV MINECRAFT_VERSION=1.14
LABEL minecraft_server="${MINECRAFT_VERSION}"

RUN mkdir -p /data
ADD https://launcher.mojang.com/v1/objects/f1a0073671057f01aa843443fef34330281333ce/server.jar /minecraft_server.jar
COPY entrypoint.sh /entrypoint
RUN chmod +x /entrypoint
ENTRYPOINT [ "/entrypoint" ]
EXPOSE 25565
WORKDIR /data
CMD ["java"]

