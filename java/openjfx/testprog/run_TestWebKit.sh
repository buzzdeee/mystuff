#!/bin/sh

ktrace -i java --module-path /usr/local/share/java/openjfx \
     --add-modules javafx.controls,javafx.web \
	-Djavafx.verbose=true \
     -cp . TestWebKit
