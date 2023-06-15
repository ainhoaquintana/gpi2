#!/bin/bash
cd ../../Descargas/pmd-bin-7.0.0-rc2/bin/

./pmd check -d ../../../aplicacion/gpi2/easybuggy-master/ -R rulesets/java/quickstart.xml -f text  >  ../../../aplicacion/gpi2/pmd_EasyBuggy

cd ../../../aplicacion/gpi2/easybuggy-master/

sudo mvn clean compile

sudo mvn package

sudo cp ./target/ROOT.war ../
