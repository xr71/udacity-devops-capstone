eksctl create cluster -r us-west-2 -n devop-cluster -t t2.small
kubectl apply -f deployment.yml
kubectl apply -f service.yml
