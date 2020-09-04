FROM schoolofdevops/carts-maven

WORKDIR /opt/carts

copy . .

RUN mvn package \
    && mv target/carts.jar /run \
    && rm -rf *

EXPOSE 80

CMD java -jar /run/carts.jar --port=80
 

