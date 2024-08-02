FROM maven:3.8.1-jdk-11
WORKDIR /app
COPY . .
VOLUME /app
RUN mvn clean package
