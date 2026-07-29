ktrace -i java -Dprism.verbose=true \
     -Dprism.debugfonts=true \
     -Djavafx.verbose=true \
	--module-path /usr/local/share/java/openjfx/ \
     --add-modules javafx.graphics,javafx.swing,javafx.controls \
     -cp . TestJFXPanel
