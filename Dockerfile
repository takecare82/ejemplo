# Imagen base con OpenJDK 11
FROM amazoncorretto:11

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia todo el directorio target al contenedor
COPY target/ target/

# Expone el puerto en el que se ejecutará la aplicación
EXPOSE 8080

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "target/spring-boot-demo-0.0.1-SNAPSHOT.jar"]
