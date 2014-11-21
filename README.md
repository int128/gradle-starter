Gradle Hello World [![Build Status](https://travis-ci.org/int128/gradle-blank.svg?branch=master)](https://travis-ci.org/int128/gradle-blank)
==================

This project contains following:

* Java example class: `Main.java`
* Spock test: `MainSpec.groovy`
* Build script: `build.groovy`
  * Building Java and Groovy sources
  * Publishing the artifact to Bintray
* Gradle wrapper
* Docker and [Fig](http://www.fig.sh) ready


How to Run
----------

Run the application.

```sh
./gradlew run
```


Dockerize
---------

### Using Docker command

Build a container image.

```sh
docker build -t int128/gradle-blank .
```

Run a container.

```sh
docker run --rm int128/gradle-blank
```


### Using Fig

Build a container image.

```sh
fig build
```

Run a container.

```sh
fig up
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
