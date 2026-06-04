#Cloud Monitoring DevOps Lab
Personal project created to learn Git, Docker, GitHub Actions and AWS CloudWatch.

---
EN/ENGLISH -  Project Description


This is a DevOps learning project that simulates a CI/CD pipeline using Docker and GitHub Actions. 
It demonstrates basic concepts of infrastructure automation and containerization, commonly used in Cloud and DevOps environments.

Technologies Used
Docker
GitHub Actions (CI/CD)
Git & GitHub
Linux (VM environment)

What the project does
Automatically builds a Docker image on every push to the repository
Executes a CI pipeline using GitHub Actions
Simulates deployment of an application inside a container

How to run locally
docker build -t cloud-monitoring-lab .
docker run -p 8080:80 cloud-monitoring-lab

Then access:
http://localhost:8080

Architecture
Developer → GitHub → GitHub Actions → Docker Build → Container Run Test


---
PT/BR - PORTUGUÊS/BR - Descrição do Projeto


Projeto para aprendizagem em DevOps que realizei, simula um pipeline de CI/CD utilizando Docker e GitHub Actions. 
Com conceitos básicos de automação de infraestrutura e conteinerização, comuns em ambientes de Cloud e DevOps.

Foram usados:
Docker
GitHub Actions (CI/CD)
Git & GitHub
Linux (ambiente em VM)


O que o projeto faz:
Constrói automaticamente uma imagem Docker a cada push no repositório
Executa um pipeline de CI utilizando GitHub Actions
Simula o deploy de uma aplicação em container

Como executar localmente:

Bash
docker build -t cloud-monitoring-lab .
docker run -p 8080:80 cloud-monitoring-lab

Depois acesse:
http://localhost:8080


Arquitetura
Developer → GitHub → GitHub Actions → Docker Build → Container Run Test
______________________________________________________________________________________________________________________________

