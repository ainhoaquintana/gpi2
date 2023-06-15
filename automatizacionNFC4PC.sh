#!/bin/bash
cd ../../Descargas/pmd-bin-7.0.0-rc2/bin/

./pmd check -d ../../../aplicacion/gpi2/NFC4PC-main/ -R rulesets/java/quickstart.xml -f text  >  ../../../aplicacion/gpi2/pmd_NFC4PC

cd ../../../aplicacion/gpi2/NFC4PC-main/

./gradlew clean jar

sudo cp ./build/libs/*.jar ../Packaging/

