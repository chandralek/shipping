FROM        java
WORKDIR     /app
COPY        shipping.jar /app
CMD         java -jar shipping.jar