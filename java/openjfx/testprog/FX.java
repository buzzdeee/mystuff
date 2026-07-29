
public class FX {
    public static void main(String[] args) {
        javafx.application.Platform.startup(() -> {
            System.out.println("started");
            System.exit(0);
        });
    }
}
