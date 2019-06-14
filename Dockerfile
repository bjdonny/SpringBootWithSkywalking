FROM openjdk:8-jre-alpine

ENV SPRING_OUTPUT_ANSI_ENABLED=ALWAYS \
    SPRINGBOOT_SLEEP=0 \
    JAVA_OPTS="" 
    
# Add a deepexi user to run our application so that it doesn't need to run as root
RUN adduser -D -s /bin/sh deepexi
WORKDIR /home/deepexi

ADD ./agent  ${WORKDIR}/agent 
ADD entrypoint.sh entrypoint.sh
RUN chmod 755 entrypoint.sh && chown deepexi:deepexi entrypoint.sh
USER deepexi

ENTRYPOINT ["./entrypoint.sh"]

EXPOSE 8080 5701/udp

ADD ./target/*.jar app.jar

