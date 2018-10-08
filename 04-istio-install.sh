source 00-common.sh

set -x
helm install \
    --wait \
    --name istio \
    --namespace istio-system \
    istio-*/install/kubernetes/helm/istio \
    --set tracing.enabled=true \
    --set grafana.enabled=true \
    --set prometheus.enabled=true \
    --set servicegraph.enabled=true
kubectl label namespace default istio-injection=enabled
