# 🐳 Python in Docker

> A Docker-based Python Data Science environment for learning, experimentation, and building reproducible Machine Learning projects.

![Docker](https://img.shields.io/badge/Docker-Container-blue?logo=docker)
![Python](https://img.shields.io/badge/Python-3.13-yellow?logo=python)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-orange?logo=jupyter)
![License](https://img.shields.io/badge/License-MIT-green)

---

## 📖 Overview

This project demonstrates how Docker can be used to build an isolated and reproducible Python development environment for data science and machine learning.

Instead of installing numerous packages directly on your operating system, everything runs inside a Docker container, making development clean, portable, and consistent across different machines.

---

## 🎯 Objectives

- Learn Docker fundamentals
- Build custom Docker images
- Run Python applications inside containers
- Launch Jupyter Notebook from Docker
- Perform data analysis and machine learning experiments
- Create reproducible development environments
- Eliminate dependency conflicts between projects

---

## 🛠️ Tech Stack

- Docker
- Python 3.13
- Jupyter Notebook
- NumPy
- Pandas
- Matplotlib
- Seaborn
- Scikit-learn
- SciPy
- Plotly

---

## 📁 Project Structure

```text
python_in_docker/
│
├── Dockerfile                  # Docker image configuration
├── requirements.txt            # Python dependencies
├── README.md                   # Project documentation
│
├── notebooks/
│   └── exploratory_analysis.ipynb
│
├── data/
│
├── src/
│
└── models/
```

---

## ⚙️ Prerequisites

Before getting started, install:

- Docker Desktop (Windows/macOS)
- Docker Engine (Linux)

Verify installation:

```bash
docker --version
```

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/MuleMED/python_in_docker.git

cd python_in_docker
```

---

### 2. Build the Docker Image

```bash
docker build -t data-science-python .
```

Verify the image:

```bash
docker images
```

---

### 3. Run the Container

```bash
docker run -it \
-p 8888:8888 \
-v $(pwd):/workspace \
data-science-python
```

### Explanation

| Command | Description |
|----------|-------------|
| `-it` | Interactive terminal |
| `-p 8888:8888` | Maps the Jupyter Notebook port |
| `-v $(pwd):/workspace` | Mounts the project folder into the container |
| `data-science-python` | Docker image name |

---

## 📓 Running Jupyter Notebook

Inside the container:

```bash
jupyter notebook \
--ip=0.0.0.0 \
--port=8888 \
--no-browser \
--allow-root
```

Open the generated URL in your browser.

Example:

```
http://127.0.0.1:8888/?token=...
```

---

## 🐳 Useful Docker Commands

### View running containers

```bash
docker ps
```

### View all containers

```bash
docker ps -a
```

### Stop a container

```bash
docker stop <container_id>
```

### Remove a container

```bash
docker rm <container_id>
```

### Remove an image

```bash
docker rmi <image_id>
```

### Access a running container

```bash
docker exec -it <container_id> bash
```

---

## 📊 Typical Data Science Workflow

```text
Dataset
   │
   ▼
Data Cleaning
   │
   ▼
Exploratory Data Analysis
   │
   ▼
Feature Engineering
   │
   ▼
Model Training
   │
   ▼
Model Evaluation
   │
   ▼
Model Deployment
```

---

## 📚 Learning Outcomes

Through this project, I aim to gain hands-on experience with:

- Docker images
- Docker containers
- Docker volumes
- Container networking
- Building custom Docker environments
- Managing Python dependencies
- Running Jupyter Notebook in Docker
- Reproducible Machine Learning workflows

---

## 🚀 Future Improvements

- Add Docker Compose
- Integrate PostgreSQL
- Add MLflow for experiment tracking
- Include FastAPI model serving
- Add CI/CD with GitHub Actions

---

## 👨‍💻 Author

**Mule Samuel**

Data Science • Machine Learning • Data Engineering

GitHub: **MuleMED**

---

## 📄 License

This project is licensed under the MIT License.