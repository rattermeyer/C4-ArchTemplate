#!/bin/bash
if [ ! -f /tmp/plantuml.jar ] ; then
        echo "downloading latest plantuml.jar"
        wget -O /tmp/plantuml.jar http://sourceforge.net/projects/plantuml/files/plantuml.jar/download
fi
for puml in *.puml; do
        echo "processing ${puml}"
        java -jar /tmp/plantuml.jar ${puml}
done
