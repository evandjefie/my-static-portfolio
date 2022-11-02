node {
    def registryProject='registry.hub.docker.com/evandjefie/my-static-portfolio'
    def IMAGE="${registryProject}:1.0.0" 
    // def IMAGE="${registryProject}:version-${env.BUILD_ID}"

    stage('clone'){
        checkout scm
    }
    

    def img = stage('build')
    {
        docker.build("$IMAGE",'.')
    }

    stage('Run'){
        img.withRun("--name evandjefie-webapp -p 80:80"){ c ->
        // img.withRun("--name run-$BUILD_ID -p 3000:3000"){ c ->
            sh 'curl localhost:80'
        }
    }

    stage('push'){
        docker.withRegistry('https://registry.hub.docker.com/','dockerHub'){
        // docker.withRegistry('https://registry.gitlab.com/',)
            img.push 'latest'
            img.push()
        }

        
    }
  
}
// docker credentials:  
// dckr_pat_TJBgFtQpzVhekM13x__KO_jRbiU
