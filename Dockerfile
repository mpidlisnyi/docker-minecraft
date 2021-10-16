FROM openjdk:16

ENV MINECRAFT_VERSION=1.17.1
LABEL minecraft_server="${MINECRAFT_VERSION}"

RUN mkdir -p /data
ADD https://launcher.mojang.com/v1/objects/a16d67e5807f57fc4e550299cf20226194497dc2/server.jar /minecraft_server.jar
COPY entrypoint.sh /entrypoint
RUN chmod +x /entrypoint
ENTRYPOINT [ "/entrypoint" ]
EXPOSE 25565
WORKDIR /data
CMD ["java"]

