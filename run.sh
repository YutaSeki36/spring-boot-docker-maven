#!/bin/sh
# wait until MySQL is really available

java -jar -Dspring.profiles.active=docker /home/dtest-0.0.1-SNAPSHOT.jar