FROM openjdk:21

RUN mkdir -p /docker/geyser

ADD https://download.geysermc.org/v2/projects/geyser/versions/latest/builds/latest/downloads/standalone /docker/geyser
WORKDIR /docker/geyser
RUN mv standalone Geyser-Standalone.jar

ENV PORT=19132
EXPOSE $PORT/udp

CMD ["java", "-Xms512M", "-Xmx512M", "-jar", "Geyser-Standalone.jar", "--config", "config.yml"]