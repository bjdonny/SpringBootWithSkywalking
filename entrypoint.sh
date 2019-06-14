#!/bin/sh

echo "The application will start in ${SPRINGBOOT_SLEEP}s..." && sleep ${SPRINGBOOT_SLEEP}
exec java ${JAVA_OPTS} ${SW_AGENT_NAMESPACE} ${SW_AGENT_NAME} ${SW_AGENT_COLLECTOR_BACKEND_SERVICES} ${SW_AGENT_SAMPLE} -Djava.security.egd=file:/dev/./urandom -javaagent:"${HOME}/agent/skywalking-agent.jar" -jar "${HOME}/app.jar" "$@"
