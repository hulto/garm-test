garm-cli pool create \
    --os-type linux \
    --os-arch amd64 \
    --enabled=true \
    --flavor e2-small \
    --image projects/ubuntu-os-cloud/global/images/ubuntu-2404-noble-amd64-v20241219 \
    --min-idle-runners 1 \
    --repo d58d57d7-057b-461c-82a9-8a0a44cdc787\
    --tags gcp,linux \
    --provider-name gcp

garm-cli repository add \
    --name garm-test \
    --owner hulto \
    --credentials garm_test \
    --install-webhook \
    --pool-balancer-type roundrobin \
    --random-webhook-secret

garm-cli github credentials add \
  --name garm_test \
  --description "Github App with access to repos" \
  --endpoint github.com \
  --auth-type pat \
  --pat-oauth-token '[PAT]'

garm-cli init --name="local_garm" \
  --url https://garm.galaxygridlabs.com \
  --username root --email root@garm.galaxygridlabs.com \
  --password '[PASS]'
