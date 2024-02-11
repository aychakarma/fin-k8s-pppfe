KUBECTL_PATH="/usr/bin/kubectl"

chmod +x "$KUBECTL_PATH"

cd kubernetes

${KUBECTL_PATH} apply -f secret.yaml
sleep 2
${KUBECTL_PATH} apply -f configmap.yaml
sleep 2
${KUBECTL_PATH} apply -f mysql-deploy.yml 
sleep 2
${KUBECTL_PATH} apply -f mysql-service.yml
sleep 2
${KUBECTL_PATH} apply -f app-deploy.yml 
sleep 2
${KUBECTL_PATH} apply -f app-service.yml
