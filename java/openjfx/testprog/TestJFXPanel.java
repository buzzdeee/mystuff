import javax.swing.JFrame;
import javax.swing.SwingUtilities;
import javafx.embed.swing.JFXPanel;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.layout.StackPane;
import javafx.application.Platform;

public class TestJFXPanel {

    public static void main(String[] args) {
        System.out.println("Starting JFXPanel test...");

        // Prevent JavaFX from shutting down automatically when panels are hidden
        Platform.setImplicitExit(false);

        // Always initialize Swing components on the AWT Event Dispatch Thread (EDT)
        SwingUtilities.invokeLater(() -> {
            try {
                System.out.println("[EDT] Creating JFrame...");
                JFrame frame = new JFrame("JFXPanel Integration Test");
                frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
                frame.setSize(400, 300);

                System.out.println("[EDT] Instantiating JFXPanel (Boots OpenJFX Toolkit)...");
                // This call triggers JFXPanel.initFx() and boots the JavaFX platform
                JFXPanel jfxPanel = new JFXPanel();
                frame.add(jfxPanel);

                // JavaFX UI elements MUST be created on the JavaFX Application Thread
                Platform.runLater(() -> {
                    System.out.println("[FX Thread] Creating JavaFX Scene components...");
                    Label label = new Label("JavaFX in Swing JFXPanel Success!");
                    StackPane root = new StackPane(label);
                    Scene scene = new Scene(root, 400, 300);

                    // Set the scene back on the panel
                    jfxPanel.setScene(scene);
                    System.out.println("[FX Thread] JavaFX Scene attached successfully.");
                });

                frame.setLocationRelativeTo(null);
                frame.setVisible(true);
                System.out.println("[EDT] Swing Frame visible.");

            } catch (Throwable t) {
                System.err.println("Failed to initialize JFXPanel!");
                t.printStackTrace();
            }
        });
    }
}
