build-java:
	javac HelloJNI.java
	javah HelloJNI

build-c:
	gcc -shared -fpic -o libhello.so HelloJNI.c

run: build-java build-c
	java HelloJNI
