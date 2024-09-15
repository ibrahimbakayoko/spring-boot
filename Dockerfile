# Utilise une image de base Java 17
FROM openjdk:17-jre-slim

# Ajoute le jar de l'application à l'image
COPY target/hello-world-0.0.1-SNAPSHOT.jar /app/hello-world.jar

# Définit la commande de démarrage
ENTRYPOINT ["java", "-jar", "/app/hello-world.jar"]
