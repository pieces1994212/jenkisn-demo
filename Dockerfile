FROM spantree/ubuntu-oraclejdk8
ARG JAR_FILE
ADD ${JAR_FILE} app.jar
EXPOSE 8300
ENTRYPOINT ["java","-Xms1536m","-Xmx1536m","-DapplicationName=csc-oa-service-operation","-DelkDestination=logstash:9250","-DlogType=logstash","-jar","/app.jar","--spring.cloud.config.uri=http://csc-oa-config-server:8000/config-server"]
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
