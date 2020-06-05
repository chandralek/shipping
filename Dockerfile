FROM        java
WORKDIR     /app
COPY        shipping-service-1.0-7.jar /app
RUN         mv shipping-service-1.0-7.jar shipping.jar
CMD         java -jar shipping.jar