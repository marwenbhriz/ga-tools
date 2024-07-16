# Loki logging
## Setup
```sh
# 1. Change to the directory
cd ./tools/logging/loki-stack
# 2. Create namespace, if not created
kubectl create ns monitoring
# 3. Add loki helm repo
helm repo add loki https://grafana.github.io/loki/charts
```
### Configuration
Open the [`loki-stack-helm.yaml`](./loki-stack-helm.yaml) file to configure loki.
### Deploy Loki Helm chart
```sh
# 4. Deploy Loki Helm chart
helm install loki-stack grafana/loki --namespace=monitoring -f loki-stack-helm.yaml
```
### Add Loki as datasource in Grafana
* Goto: grafana
* Select **Configuration > Data Sources** on the side panel
* Click **Add data Source**
* Select **Loki**
* Set values:
  * URL: `http://loki-stack:3100`
  * Maximum lines: 5000
* Click **Save & Test**








