FROM openjdk:8

ENV MINECRAFT_VERSION=1.12.2
LABEL minecraft_server="${MINECRAFT_VERSION}"

RUN mkdir -p /data
ADD https://s3.amazonaws.com/Minecraft.Download/versions/${MINECRAFT_VERSION}/minecraft_server.${MINECRAFT_VERSION}.jar /minecraft_server.jar
COPY entrypoint.sh /entrypoint
RUN chmod +x /entrypoint
ENTRYPOINT [ "/entrypoint" ]
EXPOSE 25565
WORKDIR /data
CMD ["java"]

