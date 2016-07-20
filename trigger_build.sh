# Trigger all tags/branchs for this automated build.
curl -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/cmptech/auto_cmp_php_docker_server/trigger/800bf50f-9ad8-4e2b-901c-be8cc2015b03/

# Trigger by docker tag name
#curl -H "Content-Type: application/json" --data '{"docker_tag": "master"}' -X POST https://registry.hub.docker.com/u/cmptech/auto_cmp_php_docker_server/trigger/800bf50f-9ad8-4e2b-901c-be8cc2015b03/

# Trigger by Source branch named staging
#curl -H "Content-Type: application/json" --data '{"source_type": "Branch", "source_name": "staging"}' -X POST https://registry.hub.docker.com/u/cmptech/auto_cmp_php_docker_server/trigger/800bf50f-9ad8-4e2b-901c-be8cc2015b03/

# Trigger by Source tag named v1.1
#curl -H "Content-Type: application/json" --data '{"source_type": "Tag", "source_name": "v1.1"}' -X POST https://registry.hub.docker.com/u/cmptech/auto_cmp_php_docker_server/trigger/800bf50f-9ad8-4e2b-901c-be8cc2015b03/

