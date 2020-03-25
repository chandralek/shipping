# Shipping Service.

Shipping service is written in Java, Hence we need to install Java.

1. Install Java 

```
# yum install java -y 
```

2. As per standard process we always run the applications as a normal user.

Create a user 

```
# useradd shipping
```

3. Clone the repo 

Following Settings

User -> `shipping`

Directory -> `/home/shipping`


4. Copy the service file and start the service.

```
# cp /home/shipping/shipping/shipping.service /etc/systemd/system/shipping.service
# systemctl daemon-reload
# systemctl start shipping 
# systemctl enable shipping
```

