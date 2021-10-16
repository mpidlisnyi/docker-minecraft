FROM openjdk:8

ENV MINECRAFT_VERSION=1.17.1
LABEL minecraft_server="${MINECRAFT_VERSION}"

RUN mkdir -p /data
ADD https://launcher.mojang.com/v1/objects/3dc3d84a581f14691199cf6831b71ed1296a9fdf/server.jar /minecraft_server.jar
COPY entrypoint.sh /entrypoint
RUN chmod +x /entrypoint
ENTRYPOINT [ "/entrypoint" ]
EXPOSE 25565
WORKDIR /data
CMD ["java"]

