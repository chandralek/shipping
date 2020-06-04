FROM        java
WORKDIR     /app
COPY        shipping.jar /app
CMD         sh shipping.jar