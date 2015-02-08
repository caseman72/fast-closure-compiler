# fast-closure-compiler

This gets around the long startup time of [Google Closure Compiler](https://developers.google.com/closure/compiler/)
using [Nailgun](http://www.martiansoftware.com/nailgun/), which runs a single java process in the background and keeps all of the classes loaded.

Installation:

    npm install -g git+https://github.com/caseman72/fast-closure-compiler.git

Usage:

    closure script.js script.min.js


## Manual Install

### Nailgun

* Files
 * git clone https://github.com/martylamb/nailgun.git

* Maven (required to build jar file)
 * wget http://mirror.metrocast.net/apache/maven/maven-3/3.2.5/binaries/apache-maven-3.2.5-bin.zip

* Build Nailgun in the nailgun directory
 * % make
 * % mvn clean install

* Replace the nailgun files (binary and jar) with the new ones made
 * cp nailgun/ng fast-closure-compiler/nailgun/ng
 * cp nailgun/nailgun-server/target/nailgun-server-0.9.2-SNAPSHOT.jar fast-closure-compiler/nailgun/nailgun.jar


### Closure-Compiler

* Files:
 * wget http://dl.google.com/closure-compiler/compiler-latest.zip

* NOTE:
 * The latest has different options and needs a newer JVM than our CentOS versions

* Unzip and remplace compiler.jar with version


### Performance

* It is fast


### MacOS

* If you use tmux or screen ... you may get into an issue with nohup to fix install
 * brew install reattach-to-user-namespace
* refs:
 * http://article.gmane.org/gmane.comp.terminal-emulators.tmux.user/4451
 * https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard
