Gradle Hello World [![Build Status](https://travis-ci.org/int128/gradle-blank.svg?branch=master)](https://travis-ci.org/int128/gradle-blank)
==================

This project contains following:

* Java example class: `Main.java`
* Spock test: `MainSpec.groovy`
* Build script: `build.groovy`
  * Building Java and Groovy sources
  * Publishing the artifact to Bintray
* Gradle wrapper
* Docker Compose ready


How to Run
----------

Run the application.

```sh
./gradlew run
```


Dockerize
---------

Build and run a container.

```sh
# Docker
docker build -t int128/gradle-blank .
docker run --rm int128/gradle-blank

# Docker Compose
docker-compose build
docker-compose up -d
```


Publish to Bintray
------------------

Update `gradle.properties` in the repository.

You must have Bintray account and provide its credential in `~/.gradle/gradle.properties` as follows:

```ini
bintrayUser=example
bintrayKey=secret
```

Run the upload task with publishing version.

```sh
./gradlew -Pversion=x.y.z bintrayUpload
```

Bintray credential can be provided by environment variables.

```sh
export BINTRAY_USER=example
export BINTRAY_KEY=secret
./gradlew -Pversion=x.y.z bintrayUpload
```
