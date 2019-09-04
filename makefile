configservicedir ?= ~/workspaces/spring-cloud-ms-reservation/config-service
eurekaservicedir ?= ~/workspaces/spring-cloud-ms-reservation/eureka-service
reservationclientdir ?= ~/workspaces/spring-cloud-ms-reservation/reservation-client
reservationservicedir ?= ~/workspaces/spring-cloud-ms-reservation/reservation-service


run:
	mvn clean install -DskipTests -f $(configservicedir)/pom.xml && java -jar $(configservicedir)/target/config-service-0.0.1-SNAPSHOT.jar &&
	mvn clean install -DskipTests -f $(eurekaservicedir)/pom.xml && java -jar $(eurekaservicedir)/target/eureka-service-0.0.1-SNAPSHOT.jar &&
	mvn clean install -DskipTests -f $(reservationclientdir)/pom.xml && java -jar $(reservationclientdir)/target/reservation-client-0.0.1-SNAPSHOT.jar &&
	mvn clean install -DskipTests -f $(reservationservicedir)/pom.xml && java -jar $(reservationservicedir)/target/reservation-service-0.0.1-SNAPSHOT.jar






