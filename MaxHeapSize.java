public class MaxHeapSize {
  public static void main(String[] args) {
    long maxHeapSize = Runtime.getRuntime().maxMemory();
    System.out.println("Max heap size: " + maxHeapSize + " bytes");
  }
}
