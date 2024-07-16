sudo yum install google-cloud-sdk-gke-gcloud-auth-plugin

gcloud container clusters get-credentials ga-gke --region asia-northeast1 --project grasys-study

kubectl apply -f monitoring/namespace.yaml

helm install sonarqube oci://registry-1.docker.io/bitnamicharts/sonarqube -n sonarqube

helm search hub Prometheus
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

helm repo update

helm install prometheus prometheus-community/prometheus -n monitoring


kubectl expose service prometheus-server --type=LoadBalancer --target-port=9090 --name=prometheus-server-ext -n monitoring


curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3


helm repo add grafana https://grafana.github.io/helm-charts
helm repo list
helm repo update
helm search repo grafana/grafana
helm install grafana grafana/grafana --namespace monitoring

kubectl expose service grafana --type=LoadBalancer --target-port=3000 --name=grafana-ext -n monitoring


user


sonar token: sqp_257682c295feb11b0dd0dd3be94e0d7957dac73a