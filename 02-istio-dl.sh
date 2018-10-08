source 00-common.sh

set -x
# Grafana is broken on v1.0.2
export ISTIO_VERSION=1.0.1
curl -L https://git.io/getLatestIstio | sh -
