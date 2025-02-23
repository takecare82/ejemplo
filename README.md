# spring-boot-demo con Security CI/CD
Demo project

Se requiere al menos Java 11, para verificacion simple:

### Linux / macOS

```bash
./mvnw verify
```

Para compilar se incluye el plugins de docker para empaquetar todo el proyecto:

```bash
./mvnw clean package -DskipTests
```

En el caso de Windows debe utilizar el script mvnw.cmd en lugar del mvnw

### Windows

```cmd
.\mvnw.cmd clean package -DskipTests
```

Construir la imagen del contenedor con la aplicacion

```
docker build -t jtux/spring-boot-demo .
```

Para levantar el contenedor de la aplicacion, además de las dependencias; se debe ubicarse en el directorio donde se encuentra el archivo docker-compose.yaml y ejecutar

```
cd provisioning
docker compose up
```
