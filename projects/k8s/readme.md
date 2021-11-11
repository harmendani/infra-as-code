## Commands

minikube kubectl -- apply --filename mysql-deployment.yaml 
minikube kubectl -- apply --filename mysql-pv.yaml 
minikube kubectl -- apply --filename nginx-deployment.yaml

-- Expose network
minikube kubectl -- expose deployment nginx-deployment --type=NodePort --port=8080
minikube kubectl -- expose deployment mysql --type=NodePort --port=3306