# Grafana

## Setup
```sh
helm repo add grafana https://grafana.github.io/helm-charts
helm repo list
helm repo update
helm search repo grafana/grafana
helm install grafana grafana/grafana --namespace monitoring
```

## Need Work
we need to add more dashboards and slo/sli dashboards and alerts and documentation for alerts describe steps and pic .. and notifications to pagerduty to manage on call shift.

![plot](../img/img10.png)
