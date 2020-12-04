pipelineJob('jenkins-showroom') {
  definition {
    cpsScm {
      scm {
        git{
          remote{
            url('https://github.com/jeremychauvet/jenkins-pipelines-showroom')
          }
          branch('main')
        }
        scriptPath('project-one/Jenkinsfile')
      }
      lightweight()
    }
  }
}
