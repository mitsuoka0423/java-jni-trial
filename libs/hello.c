#include <jni.h>
#include <stdio.h>

JNIEXPORT void JNICALL
Java_ExecuteCFromJava_hello(JNIEnv *env, jobject obj) {
    printf("Hello from C!\n");
    return;
}
