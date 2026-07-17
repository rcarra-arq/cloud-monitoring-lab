

## *Cloud Monitoring DevOps Lab*
Personal project created to learn Git, Docker, GitHub Actions.

---
EN/ENGLISH -  Project Description

This is a DevOps learning project that simulates a CI/CD pipeline using Docker and GitHub Actions. 
It demonstrates basic concepts of infrastructure automation and containerization, commonly used in Cloud and DevOps environments.

---
Technologies Used
* [x] Docker
* [x] GitHub Actions (CI/CD)
* [x] Git & GitHub
* [x] Linux (VM environment)

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

## Cost-Conscious Design

This lab is intentionally a **zero-cloud-cost project**:

- Everything runs locally (Docker) or on **GitHub Actions, which is free for
  public repositories** — no AWS resources are created, so there is nothing
  to forget running.
- The image is pinned to `nginx:1.27-alpine` (~8 MB) instead of the default
  `nginx` image (~190 MB): faster pulls, faster CI runs, smaller attack
  surface, and no surprise upgrades from a moving `latest` tag.
- The CI smoke test actually verifies the container answers HTTP 200 — a
  pipeline that fails fast wastes fewer CI minutes than one that "passes"
  with a broken app.

For the real cloud cost story — resource tagging, AWS Budget alerts and a
per-resource cost estimate — see my
[aws-highly-available-webapp-terraform](https://github.com/rcarra-arq/aws-highly-available-webapp-terraform)
project, where infrastructure that costs money is created and destroyed by
design.

---

### Screenshots
### CI/CD Pipeline (GitHub Actions)
![CI/CD Pipeline](./screenshots/ci-cd-pipeline.png)

### Repository Overview
![Repository](./screenshots/repo-overview.png)

### Application Running (Docker)
![App Running](./screenshots/app-running.png)

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

---

Custo consciente por design

Este lab é intencionalmente um projeto de custo zero de nuvem: tudo roda
localmente (Docker) ou no GitHub Actions (gratuito para repositórios
públicos). A imagem é pinada em nginx:1.27-alpine (~8 MB contra ~190 MB da
imagem padrão) — builds mais rápidos e menos minutos de CI — e o smoke test
do pipeline verifica de verdade se o container responde HTTP 200. Para a
parte de custos em nuvem real (tagging, budget alert e estimativa por
recurso), veja o projeto aws-highly-available-webapp-terraform.

---

Screenshots
### Pipeline CI/CD (GitHub Actions)
![Pipeline CI/CD](./screenshots/ci-cd-pipeline.png)

### Visão do Repositório
![Repositório](./screenshots/repo-overview.png)

### Aplicação Rodando (Docker)
![App Rodando](./screenshots/app-running.png)
______________________________________________________________________________________________________________________________

