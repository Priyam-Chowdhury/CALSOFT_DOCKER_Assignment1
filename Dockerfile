FROM maven:3.8.1-jdk-11
WORKDIR /app
COPY . .
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/Priyam-Chowdhury/CALSOFT_DOCKER_Assignment1.git /app/repo
COPY /app/repo .
VOLUME /app
RUN mvn clean package
