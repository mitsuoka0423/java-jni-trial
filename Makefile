run: clean build-c build-java
	java -Djava.library.path=. ExecuteCFromJava

build-java:
	javac ExecuteCFromJava.java

build-c:
	gcc -I${JAVA_HOME}/include -I${JAVA_HOME}/include/darwin -shared -o libhello.dylib -arch x86_64 hello.c

clean:
	rm -rf *.so *.class
