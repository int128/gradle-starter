from java:8

add . /usr/src/app
workdir /usr/src/app
run ./gradlew assemble
 
cmd ["./gradlew", "run"]
