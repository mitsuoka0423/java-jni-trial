run: clean build-c build-java
	java -Djava.library.path=libs ExecuteCFromJava

build-java:
	javac ExecuteCFromJava.java

build-c:
	gcc -I${JAVA_HOME}/include -I${JAVA_HOME}/include/darwin -shared -o libs/libhello.dylib -arch x86_64 libs/hello.c

clean:
	rm -rf *.so *.class
