#!/bin/sh

java -jar swagger2markup-cli-1.0.0.jar convert -i index.yaml -d out -c config.properties

# asciidoctor out/definitions/*.adoc
# asciidoctor out/operations/*.adoc
# asciidoctor out/*.adoc

cat out/overview.adoc out/paths.adoc out/definitions.adoc > out/index.adoc
