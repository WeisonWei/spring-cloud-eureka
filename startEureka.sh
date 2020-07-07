#!/usr/bin/env bash
nohup java -jar ./target/cloud-eureka-0.0.1-SNAPSHOT.jar --spring.profiles.active=node1 &
nohup java -jar ./target/cloud-eureka-0.0.1-SNAPSHOT.jar --spring.profiles.active=node2 &
nohup java -jar ./target/cloud-eureka-0.0.1-SNAPSHOT.jar --spring.profiles.active=node3 &