 We have used a Minikube single-node cluster to set up our Kubernetes environment for  deploying and testing containerized applications locally.
 Docker Hub is used as the container image registry to store and manage our Docker images  securely.
 The CI/CD pipeline is secured by leveraging GitHub Secrets and Repository Variables, ensuring sensitive information such as Docker credentials and environment          configurations are not exposed.
 A self-hosted GitHub Actions runner is used to execute pipeline jobs, providing more control over the build environment and supporting tasks like Docker builds and    deployments to Minikube.
The pipeline is triggered automatically upon changes to key files, ensuring that the latest code is always built, tested, and deployed efficiently.
We have implemented dynamic Docker image tagging using build numbers to maintain versioning and track deployments accurately.
Kubernetes manifests are parameterized, allowing environment-specific variables (like image name, registry, and build number) to be easily injected during deployment, making the pipeline flexible and reusable.
