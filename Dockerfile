#github actions를 사용하기 때문에 이 파일은 필요가 없다.
FROM amazoncorretto:17
EXPOSE 8080
ARG JAR_FILE=target/actions-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]