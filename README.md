# Devops Capstone Project

This repository builds a Flask api app with the Flasgger interface in Docker. The entire pipeline is automated via Jenkins and is run over AWS EC2. 

### Instructions
1. Clone/Fork this repository
2. Make sure you have an AWS EC2 Instance that is running Jenkins
3. Link your GitHub to your Jenkins instance and build a new pipeline off of this repository
4. At this point, it is important to make sure that you have installed `pylin`, `hadolint`, and `Docker` installed on your AWS Jenkins instance
5. You will also need to install `kubectl` and `eksctl`: I followed the resources here: 
  * https://docs.aws.amazon.com/eks/latest/userguide/getting-started-eksctl.html 
  * https://docs.aws.amazon.com/eks/latest/userguide/install-aws-iam-authenticator.html
  * https://docs.aws.amazon.com/eks/latest/userguide/install-kubectl.html

6. This is also a good time to make sure that the `jenkins` user group can call docker commands by adding this to your Jenkins instance: `sudo usermod -aG docker jenkins`
7. It is important to note here also that your `eksctl` and `kubectl` must be the correct versions as mentioned by the resources above, and that if you need to debug, it will be helpful to know the storage of the KUBECONFIG file in `~/.kube/config`
8. Once the pipeline finishes running, you will be able to navigate to AWS EKS and see the loadbalancer service available. 

### Dependencies:
* Docker
* Kubectl
* AWS CLI
* EKS CLI (eksctl)
* python3 venv with flask and flasgger (if want to run the app locally)

