FROM vaporio/foundation

LABEL maintainer "Charles Butler <chuck@vapor.io>"
LABEL repository "https://github.com/vapor-ware/plantuml-c4"

RUN apt-get update && apt-get install -y \
        openjdk-8-jre-headless \
        graphviz \
        wget \
    && wget https://sourceforge.net/projects/plantuml/files/plantuml.jar/download -O /plantuml.jar

VOLUME /localhost
WORKDIR /localhost

ENTRYPOINT ["java", "-Djava.awt.headless=true", "-jar", "/plantuml.jar", "-tsvg", '*.wasd']
