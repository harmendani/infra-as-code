## Commands
## minikut start 

1 - minikube kubectl -- apply --filename mysql-deployment.yaml 

--- 
2 - minikube kubectl -- apply --filename mysql-pv.yaml 

--- 
3 - minikube kubectl -- apply --filename nginx-deployment.yaml 

--- 
4 - minikube kubectl -- expose deployment nginx-deployment --type=NodePort --port=8080 \ 

--- 
5 - minikube kubectl -- expose deployment mysql --type=NodePort --port=3306 \ 

