import javafx.application.Application;
import javafx.application.Platform;
import javafx.scene.Scene;
import javafx.scene.web.WebView;
import javafx.stage.Stage;

public class TestWebKit extends Application {

    @Override
    public void start(Stage stage) {
        System.out.println("Initializing JavaFX WebKit...");

        try {
            // Instantiating WebView triggers native 'jfxwebkit' library loading
            WebView webView = new WebView();

            // Load simple inline HTML
            webView.getEngine().loadContent(
                "<html><body><h1>WebKit is working!</h1><p>OpenJFX WebKit loaded successfully.</p></body></html>"
            );

            // Set up a basic window
            Scene scene = new Scene(webView, 600, 400);
            stage.setTitle("OpenJFX WebKit Test");
            stage.setScene(scene);
            stage.show();

            System.out.println("SUCCESS: WebKit initialized without errors.");

        } catch (Throwable t) {
            System.err.println("FAILURE: Failed to load WebKit native library or initialize WebView.");
            t.printStackTrace();
            Platform.exit();
            System.exit(1);
        }
    }

    public static void main(String[] args) {
        launch(args);
    }
}
