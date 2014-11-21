from dockerfile/java:oracle-java7
 
run mkdir -p /usr/src/app
workdir /usr/src/app
 
add . /usr/src/app
run ./gradlew assemble
 
cmd ["./gradlew", "run"]
