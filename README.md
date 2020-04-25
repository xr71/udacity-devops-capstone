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
  https://docs.aws.amazon.com/eks/latest/userguide/install-kubectl.html


