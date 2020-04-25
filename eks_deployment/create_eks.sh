eksctl create cluster -r us-west-2 -n capstone-cluster -t t2.medium
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml