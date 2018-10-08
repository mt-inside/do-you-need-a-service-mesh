source 00-common.sh

set -x
gcloud container clusters delete fullstackfest
echo now change kube context back to something valid
