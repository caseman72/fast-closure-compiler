# fast-closure-compiler

This gets around the long startup time of [Google Closure Compiler](https://developers.google.com/closure/compiler/)
using [Nailgun](http://www.martiansoftware.com/nailgun/), which runs a single java process in the background and keeps all of the classes loaded.

Installation:

    npm install -g git+https://github.com/caseman72/fast-closure-compiler.git#trulia

Usage:

    closure script.js script.min.js


## Manual Install

### Nailgun

* Files
** git clone https://github.com/martylamb/nailgun.git

* Maven (required to build jar file)
** wget http://mirror.metrocast.net/apache/maven/maven-3/3.2.5/binaries/apache-maven-3.2.5-bin.zip

* Build Nailgun in the nailgun directory
** % make
** % mvn clean install

* Replace the nailgun files (binary and jar) with the new ones made
** cp nailgun/ng fast-closure-compiler/nailgun/ng
** cp nailgun/nailgun-server/target/nailgun-server-0.9.2-SNAPSHOT.jar fast-closure-compiler/nailgun/nailgun.jar


### Closure-Compiler

* Files:
** wget http://dl.google.com/closure-compiler/compiler-latest.zip

* NOTE:
** The latest has different options and needs a newer JVM than our CentOS versions

* Unzip and remplace compiler.jar with version


### Performance

* I ran a script for all the consumer files (48 js files) ~ 1.1 seconds for all 48
** time output = 0.976u 1.131s 0:07.21 29.1%

* I ran a script for all the crm file (58 js file) ~ 1.5s for all of them the first time
** time output = 1.151u 1.490s 0:08.86 29.7%

* It is fast


