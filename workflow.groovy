pipeline {
    agent any
    stages {
        stage("Analysis_Compilation_Packaging") {
            parallel {
                stage("MifareClassicTool") {
                    steps {
                        sh'''
                        cd /home/alumno/aplicacion/gpi2/
                        sudo ./automatizacionMifareClassicTool.sh
                        '''
                    }
                    
                }
                stage("Easybuggy") {
                    steps {
                        sh'''
                        cd /home/alumno/aplicacion/gpi2/
                        sudo ./automatizacionEasybuggy.sh
                        '''
                    }
                }
		stage("NFC4PC") {
                    steps {
                        sh'''
                        cd /home/alumno/aplicacion/gpi2/
                        sudo ./automatizacionNFC4PC.sh
                        '''
                    }
                }
            }
        }
    }
}

