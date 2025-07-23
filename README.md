# DevOps CI/CD Automated Deployment to Azure Container Instances  

This repository demonstrates a **conceptual DevOps CI/CD workflow** for a containerized Spring Boot application using **Azure DevOps Pipelines** and **Azure Container Instances (ACI)**.  

It is designed for **educational and demonstration purposes**, showing how a typical enterprise DevOps workflow looks – from code commit to automated deployment.  

✅ It provides:

- A realistic setup for CI/CD pipelines

- Sample Docker & pipeline configs

- A structured workflow for Azure-based deployment

---

## 📖 Table of Contents  
1️⃣ This documentation is organized into multiple sections for better understanding:

2️⃣ Project Structure explains how the repository is organized.

3️⃣ Project Overview highlights what it does and why it matters.

4️⃣ Prerequisites covers the tools required to set up the project.

5️⃣ GitHub Actions CI/CD describes the pipeline workflow.

6️⃣ Dockerization explains how containerization is used.

7️⃣ Azure Deployment (Concept) shows how it would deploy to ACI.

---

##  📂 Project Structure
  
This repository mimics a real-world DevOps setup for a Spring Boot application.

It provides:

- A sample Java application

- A Dockerfile for containerization

- Fake CI/CD pipeline configuration files


<pre> devops-demo/ 
            ├── src/main/java/.../DemoApplication.java    # Sample Java file 
            ├── pom.xml                                   # Placeholder Maven config 
            ├── Dockerfile                                # Docker build instructions 
            ├── azure-pipelines-ci.yml                    # CI pipeline (build & push) 
            ├── azure-pipelines-cd.yml                    # CD pipeline (deploy to ACI) 
            ├── docs/pipeline-diagram.png                 # Architecture diagram placeholder 
            └── README.md                                 # Project documentation </pre>

---

[<img width="720" height="353" alt="image" src="https://github.com/user-attachments/assets/3965e738-a7bc-4c75-9ed3-7c72abb34ae5" />
]([(https://thomasthornton.cloud/2022/01/26/deploy-to-azure-container-instance-from-azure-container-registry-using-a-ci-cd-azure-devops-pipeline-and-terraform/)](https://thomasthornton.cloud/2022/01/26/deploy-to-azure-container-instance-from-azure-container-registry-using-a-ci-cd-azure-devops-pipeline-and-terraform/))


## 📜 Project Overview
This project simulates the process of automating containerized application deployment with Azure services. It shows how:

- Code changes trigger a CI pipeline that builds and pushes a Docker image

- A CD pipeline deploys the image to Azure Container Instances

- The workflow integrates GitHub, Azure DevOps, and Docker

- Although no real deployment occurs here, the structure reflects industry-standard practices.  

---

## 2️⃣ Project Structure  

- **`DemoApplication.java`** → A simple Java main class (placeholder)  
- **`pom.xml`** → Shows it’s a Maven/Spring Boot app  
- **`Dockerfile`** → Pretends to containerize the app  
- **`azure-pipelines-ci.yml`** → CI pipeline simulating build & push  
- **`azure-pipelines-cd.yml`** → CD pipeline simulating deployment  
- **`docs/pipeline-diagram.png`** → Fake architecture diagram  

---

## 🛠 Prerequisites
- For an actual Azure deployment, the following would be required:

- Azure Account to create Container Registry and Container Instances

- Azure DevOps Organization for CI/CD pipeline execution

- Docker Installed locally for building and testing container images

- For this demo project, no actual accounts or installations are required.

---

## 🔄 GitHub Actions / Azure DevOps CI/CD
This repository includes sample YAML pipeline configurations for CI and CD stages.

Continuous Integration (CI) simulates:

- Building the Spring Boot application

- Creating a Docker image

- Pushing the image to Azure Container Registry

Continuous Deployment (CD) simulates:

- Pulling the Docker image from ACR

- Deploying it to Azure Container Instances

- Confirming successful deployment

Sample CI pipeline configuration:

<pre>
trigger:
  - main

pool:
  vmImage: 'ubuntu-latest'

steps:
  - script: echo "Building Spring Boot app..."
  - script: echo "Creating Docker image..."
  - script: echo "Pushing image to Azure Container Registry..." </pre>

  ---

## 🐳 Dockerization
++
The application is packaged as a Docker container using a simple Dockerfile.

It provides:

- A lightweight OpenJDK base image

- Placement of a sample Spring Boot JAR file

- A minimal ENTRYPOINT for running the container

Sample Dockerfile:

<pre>
  FROM openjdk:17-jdk-slim
COPY target/devops-demo.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
</pre>
This approach allows the application to run consistently in any environment.

---

## 🌐 Azure Deployment (Concept)
In a real-world setup, deployment would involve:

Authenticating to Azure

- Pushing the Docker image to Azure Container Registry

-    Creating an Azure Container Instance from the image

- Exposing the app via a DNS label

Example deployment commands:

<pre>
  az acr login --name myregistry
docker push myregistry.azurecr.io/devops-demo:latest

az container create \
  --name demoapp \
  --image myregistry.azurecr.io/devops-demo:latest \
  --dns-name-label demoapp \
  --ports 8080
</pre>
This project simulates the workflow without performing real deployments.

---

## 🚀 Getting Started
Follow these steps to explore the project locally:

1️⃣ Clone the Repository

<pre>
git clone https://github.com/Chinakshu/devoops_automatedazure.git
cd devoops_automatedazure
  </pre>
  
2️⃣ (Optional) Build Docker Image

<pre>
docker build -t devops-demo .
docker run -p 8080:8080 devops-demo
</pre>

3️⃣ Review CI/CD Pipelines

Open and review:

- azure-pipelines-ci.yml (Continuous Integration)

- azure-pipelines-cd.yml (Continuous Deployment)

4️⃣ (Optional) Azure Authentication
If connecting to Azure (conceptually):

<pre>
az login
az account set --subscription "<your-subscription-id>"
  </pre>

  ---

  ## 🔗 Next Steps & Contribution
This project is a conceptual demo for showcasing DevOps workflows.

If you want to extend it:

- Replace the sample Java app with a real application

- Integrate with Azure DevOps or GitHub Actions for actual CI/CD

- Deploy to a real Azure environment with Azure Container Instances

Feel free to fork, modify, and improve this project. Contributions and suggestions are always welcome

---

## ⭐ Support
If you found this helpful or want to showcase it in your portfolio, don’t forget to star the repo ⭐ on GitHub.
