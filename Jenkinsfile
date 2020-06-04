pipeline {
    agent {
        dockerfile true
    }

    stages {
        stage('Download') {
            steps {
                // Checkout the git repository and refspec pointed to by jenkins
                checkout scm

		// Delete old files
		sh "cd docs && make clean"

            }
        }


        stage("Build") {
            steps {
                sh "cd docs && make html"
            }
        }

        stage('Archive') {
            steps {
                script {
                    // Only store the HTML output in a directory with the same name
                    // as the branch it is on, except we replace slashes with
                    // dashes.
                    //String directoryName = env.BRANCH_NAME.replace("/","-")
                    //sh "rm -rf ${directoryName}"
                    //sh "mv build/docs/html/ ${directoryName}"

                    // Archive
                    //archiveArtifacts artifacts: "${directoryName}/**/*", fingerprint: true
                }
            }
        }
    }

}
