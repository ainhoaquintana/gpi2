#!/bin/bash
cd ../../Descargas/pmd-bin-7.0.0-rc2/bin/

./pmd check -d ../../../aplicacion/gpi2/MifareClassicTool-master/classicTool/ -R rulesets/java/quickstart.xml -f text  >  ../../../aplicacion/gpi2/pmd_MifareClassicTool

cd ../../../aplicacion/gpi2/MifareClassicTool-master/classicTool/

./gradlew assembleDebug

sudo cp /app/build/outputs/apk/debug/apk-debug.apk ../../  

