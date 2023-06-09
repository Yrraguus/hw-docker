FROM openjdk:8-jdk-alpine

EXPOSE 8080

ADD target/hw-spring-boot-rest-0.0.1-SNAPSHOT.jar app.jar

CMD ["java", "-jar", "app.jar"]

# docker run -itd --name app -P myapp:1.0

#Шаг 3. Добавьте собранный jar в ваш образ(ADD).
#
#Шаг 4. Для удобства сборки образа и запуска контейнера вашего приложения
#напишите docker-compose.yml. Контейнер назовите, как вам нравится,
#а в его конфигурациях пропишите следующее:
#
#добавьте build: ./, который скажет docker-compose, что надо сначала собрать образ для этого контейнера;
#добавьте соответствие порта на хост машине и порта в контейнере для вашего приложения (аналог аргумента -p у команды docker run).
#Шаг 5. Два полученных файла добавьте в репозиторий вашего приложения и пришлите ссылку на него.