# syntax=docker/dockerfile:experimental
FROM adoptopenjdk/openjdk8-openj9:jre8u222-b10_openj9-0.15.1-alpine
VOLUME /tmp
ARG JAR_FILE
# maven插件时使用
COPY ${JAR_FILE} app.jar
# 手动build时使用
#COPY ./target/spring-cloud-eureka-0.0.1-SNAPSHOT.jar app.jar
ENV JAVA_OPTS=""
RUN /bin/sh -c "java -Xcmx50M -Xshareclasses -Xshareclasses -jar app.jar &"; sleep 20;
#RUN /bin/sh -c "java -Xcmx50M -Xshareclasses -Xshareclasses -jar app.jar &"; sleep 20; ps -ef | grep java | awk '{print $2}' | xargs kill
ENTRYPOINT ["java", "-Xcmx50M", "-Xshareclasses", "-Xquickstart", "-Djava.security.egd=file:/dev/./urandom", "-Duser.timezone=Asia/ShangHai", "-jar", "app.jar"]
#CMD java -jar /app/itoken-eureka-1.0.0-SNAPSHOT.jar --spring.profiles.active=prod
EXPOSE 8761