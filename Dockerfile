FROM openjdk:13-alpine
VOLUME /tmp
EXPOSE 8761
ADD target/*.jar demo-0.0.1-SNAPSHOT.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /demo-0.0.1-SNAPSHOT.jar" ]