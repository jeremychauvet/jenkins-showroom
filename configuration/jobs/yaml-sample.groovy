pipelineJob('YAML sample') {
  definition {
    cpsScm {
      scm {
        git{
          remote{
            url('https://github.com/jeremychauvet/jenkins-pipelines-showroom')
          }
          branch('main')
        }
        scriptPath('yaml/Jenkinsfile.yaml')
      }
      lightweight()
    }
  }
}
