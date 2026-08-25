FROM eclipse-temurin:25-jre

WORKDIR /opt/Lavalink

RUN apt-get update \
    && apt-get install -y --no-install-recommends curl \
    && curl -fL \
       https://github.com/lavalink-devs/Lavalink/releases/download/4.2.2/Lavalink.jar \
       -o /opt/Lavalink/Lavalink.jar \
    && apt-get purge -y curl \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

COPY application.yml /opt/Lavalink/application.yml

EXPOSE 2333

CMD ["java", "-jar", "/opt/Lavalink/Lavalink.jar"]