# EKS Deployment files

Good resources from:

- https://eksworkshop.com/
- https://docs.aws.amazon.com/eks/latest/userguide/launch-workers.html


### Deployments
```
eksctl create cluster -r us-west-2 -n capstone-cluster -t t2.medium
```

```
kubectl apply -f deployment.yaml
```

```
kubectl apply -f service.yaml
```

#### Output
The result of the commands above should look something akin to:
```
[ℹ]  eksctl version 0.17.0
[ℹ]  using region us-west-2
[ℹ]  setting availability zones to [us-west-2d us-west-2b us-west-2a]
[ℹ]  subnets for us-west-2d - public:192.168.0.0/19 private:192.168.96.0/19
[ℹ]  subnets for us-west-2b - public:192.168.32.0/19 private:192.168.128.0/19
[ℹ]  subnets for us-west-2a - public:192.168.64.0/19 private:192.168.160.0/19
[ℹ]  nodegroup "ng-619800b1" will use "ami-0f53c7a1236d06961" [AmazonLinux2/1.15]
[ℹ]  using Kubernetes version 1.15
[ℹ]  creating EKS cluster "capstone-cluster" in "us-west-2" region with un-managed nodes
[ℹ]  will create 2 separate CloudFormation stacks for cluster itself and the initial nodegroup
[ℹ]  if you encounter any issues, check CloudFormation console or try 'eksctl utils describe-stacks --region=us-west-2 --cluster=capstone-cluster'
[ℹ]  CloudWatch logging will not be enabled for cluster "capstone-cluster" in "us-west-2"
[ℹ]  you can enable it with 'eksctl utils update-cluster-logging --region=us-west-2 --cluster=capstone-cluster'
[ℹ]  Kubernetes API endpoint access will use default of {publicAccess=true, privateAccess=false} for cluster "capstone-cluster" in "us-west-2"
[ℹ]  2 sequential tasks: { create cluster control plane "capstone-cluster", create nodegroup "ng-619800b1" }
[ℹ]  building cluster stack "eksctl-capstone-cluster-cluster"
[ℹ]  deploying stack "eksctl-capstone-cluster-cluster"

```
