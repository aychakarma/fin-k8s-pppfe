cd kubernetes

kubectl apply -f secret.yaml
sleep 2
kubectl apply -f configmap.yaml
sleep 2
kubectl apply -f mysql-deploy.yml 
sleep 2
kubectl apply -f mysql-service.yml
sleep 2
kubectl apply -f app-deploy.yml 
sleep 2
kubectl apply -f app-service.yml
