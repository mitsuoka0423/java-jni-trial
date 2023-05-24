public class ExecuteCFromJava {
  static {
      System.loadLibrary("hello");
  }

  private native void hello();

  public static void main(String[] args) {
      new ExecuteCFromJava().hello();
  }
}