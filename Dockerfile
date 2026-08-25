FROM eclipse-temurin:25-jre

WORKDIR /opt/Lavalink

COPY Lavalink.jar /opt/Lavalink/Lavalink.jar
COPY application.yml /opt/Lavalink/application.yml

EXPOSE 2333

CMD ["java", "-jar", "/opt/Lavalink/Lavalink.jar"]