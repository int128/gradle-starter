Gradle Hello World [![Build Status](https://travis-ci.org/int128/gradle-blank.svg?branch=master)](https://travis-ci.org/int128/gradle-blank)
==================

This project contains following:

* Java example class: `Main.java`
* Spock test: `MainSpec.groovy`
* Build script: `build.groovy`
  * Building Java and Groovy sources
  * Publishing the artifact to Bintray
* Gradle wrapper


Build
-----

Run the build task.

```sh
./gradlew build
```


Publish
-------

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
