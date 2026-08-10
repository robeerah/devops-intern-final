# DevOps Intern Final Assessment

![CI](https://github.com/robeerah/devops-intern-final/actions/workflows/ci.yml/badge.svg)

**Author:** Rofiat Ahmed Sholagberu  
**Date:** August 10, 2026  
**Repository:** `devops-intern-final`

This project demonstrates a small but realistic DevOps pipeline using:

- Linux shell scripting
- Git and GitHub
- Docker containerization
- GitHub Actions CI/CD
- HashiCorp Nomad job deployment
- Grafana Loki log monitoring
- Optional MLflow experiment tracking

---

## Project Overview

The repository contains a simple Python application called `hello.py`.

The application:

1. Prints `Hello, DevOps!`
2. Can optionally run as a small HTTP service using `--serve`

The project then shows how to:

- Run a Linux system information script
- Containerize the app with Docker
- Automatically test it with GitHub Actions
- Deploy it as a Nomad service job
- Forward container logs to Grafana Loki

---

## Repository Layout

```text
.
├── .github/workflows/ci.yml   # GitHub Actions CI pipeline
├── docs/screenshots/          # Recommended screenshot storage
├── monitoring/                # Loki and Promtail setup
├── nomad/hello.nomad          # Nomad job definition
├── mlflow/                    # Optional MLflow extra credit
├── scripts/sysinfo.sh         # Linux system info script
├── Dockerfile                 # Container definition
├── hello.py                   # Sample application
└── README.md                  # Project documentation