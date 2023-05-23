#include <stdio.h>
#include "HelloJNI.h"

JNIEXPORT void JNICALL Java_HelloJNI_helloFromC(JNIEnv *env, jobject obj) {
    printf("Hello from C!\n");
}
