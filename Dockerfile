FROM maven:3.8.4-openjdk-8
WORKDIR /app
COPY dev /app/
RUN mvn clean package
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh
WORKDIR /app
ENTRYPOINT ./start.sh


