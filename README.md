# spring-cloud-ms-reservation
Building Microservices with Spring Cloud - https://www.youtube.com/watch?v=ZyK5QrKCbwM


* reservation service = http://localhost:8000/reservations/
* config service - http://localhost:8888/reservation-service/master
* eureka server - http://localhost:8761/
* reservation client using zuul proxy to reach reservation service - http://localhost:9999/reservation-service/reservations