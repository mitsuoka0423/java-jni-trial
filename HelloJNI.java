public class HelloJNI {
    static {
      System.setProperty("java.library.path", System.getProperty("user.dir"));
      System.loadLibrary("hello");
    }

    private native void helloFromC();

    public static void main(String[] args) {
        HelloJNI hello = new HelloJNI();
        hello.helloFromC();
        System.out.println("Hello World!");
    }
}
