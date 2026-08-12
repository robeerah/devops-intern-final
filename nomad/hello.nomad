job "hello-devops" {
  datacenters = ["dc1"]
  type        = "service"

  group "hello" {
    count = 1

    network {
      port "http" {
        to = 8080
      }
    }

    restart {
      attempts = 3
      interval = "1m"
      delay    = "5s"
      mode     = "fail"
    }

    task "hello" {
      driver = "docker"

      config {
        image      = "hello-devops:latest"
        command    = "python"
        args       = ["hello.py", "--serve"]
        ports      = ["http"]
        force_pull = false
      }

      resources {
        cpu    = 100
        memory = 128
      }
    }
  }
}