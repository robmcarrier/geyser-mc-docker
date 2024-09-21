FROM openjdk:17-ea-jdk

RUN mkdir -p /docker/geyser

ADD https://download.geysermc.org/v2/projects/geyser/versions/latest/builds/latest/downloads/fabric /docker/geyser
WORKDIR /docker/geyser

ENV PORT=19132
EXPOSE $PORT/udp

CMD ["java", "-Xms512M", "-Xmx512M", "-jar", "Geyser-Fabric.jar", "--config"]