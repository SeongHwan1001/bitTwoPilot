FROM openjdk:8-jdk-slim
VOLUME /tmp
ADD p1-0.0.1-SNAPSHOT.war pilot.war
RUN bash -c 'touch /pilot.war'
ENTRYPOINT ["java","-XX:MaxMetaspaceSize=512m","-XX:MetaspaceSize=256m","-Djava.security.egd=file:/dev/./urandom","-jar","/pilot.war"]
