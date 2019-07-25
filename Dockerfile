FROM openjdk:8-jdk-alpine
ARG JAR_FILE
ADD ${JAR_FILE} app.jar
EXPOSE 8300
ENTRYPOINT ["java","-Xms1536m","-Xmx1536m","-DapplicationName=demo","-jar","/app.jar"]
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
