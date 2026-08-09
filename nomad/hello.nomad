job "hello-devops" {

  datacenters = ["dc1"]

  type = "service"


  group "hello" {


    task "hello-container" {


      driver = "docker"


      config {

        image = "devops-hello"

      }


      resources {

        cpu = 100

        memory = 128

      }

    }

  }

}