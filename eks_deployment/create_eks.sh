eksctl create cluster -r us-west-2 -n capstone-cluster -t t2.small
kubectl apply -f deployment.yml
kubectl apply -f service.yml