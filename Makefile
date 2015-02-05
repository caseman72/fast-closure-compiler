install: bin/libNailgunTest.jnilib closure-compiler

bin/libNailgunTest.jnilib:
	# cd bin && javac NailgunTest.java && gcc NailgunTest.c -shared -o libNailgunTest.jnilib -I/System/Library/Frameworks/JavaVM.framework/Headers/
	cd bin && javac NailgunTest.java && gcc -fPIC NailgunTest.c -shared -o libNailgunTest.jnilib -I/usr/java/jdk1.7.0_25/include/ -I/usr/java/jdk1.7.0_25/include/linux/
	
closure-compiler:
	rm -fr temp
	mkdir temp
	#cd temp && curl -O http://closure-compiler.googlecode.com/files/compiler-latest.zip && unzip compiler-latest.zip
	cd temp && curl -O http://dl.google.com/closure-compiler/compiler-latest.zip && unzip compiler-latest.zip
	
	mkdir closure-compiler
	mv temp/compiler.jar closure-compiler
	rm -fr temp

nailgun:
	rm -fr temp
	#svn co http://nailgun.svn.sourceforge.net/svnroot/nailgun/trunk@21 temp && cd temp/nailgun && ant
	svn co http://svn.code.sf.net/p/nailgun/code/trunk@21 temp && cd temp/nailgun && ant
	mkdir nailgun
	mv temp/nailgun/dist/nailgun-0.7.1.jar nailgun/nailgun.jar
	mv temp/nailgun/ng nailgun/ng
	rm -fr temp
