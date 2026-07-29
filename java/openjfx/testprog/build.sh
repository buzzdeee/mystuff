#!/bin/sh
rm -f FX.class TestJFXPanel.class TestWebKit.class
javac --module-path /usr/local/share/java/openjfx/ --add-modules javafx.graphics FX.java

javac --module-path /usr/local/share/java/openjfx/ \
      --add-modules javafx.graphics,javafx.swing,javafx.controls \
      TestJFXPanel.java

javac --module-path /usr/local/share/java/openjfx \
      --add-modules javafx.controls,javafx.web \
      TestWebKit.java

