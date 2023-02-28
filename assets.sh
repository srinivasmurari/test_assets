curl --location --request PUT 'http://172.27.224.1:9001/assets/apigee-deploy-maven-plugin' \
--header 'Content-Type: application/json' \
--data-raw '{
"id": 5000,
    "name": "apigee-deploy-maven-plugin",
    "type": "apiproxy",
    "branchMappings": [
        {
            "branchPattern": "default",
            "deploymentInfo": [
                {
                    "org": "sidgs-hybrid",
                    "env": "dev-2",
                    "host": "default"
                }
            ]
        },
        {
            "branchPattern": ".*develop.*",
            "deploymentInfo": [
                {
                    "org": "sidgs-hybrid",
                    "env": "dev-6",
                    "host": "server.apigee-hybrid-runtime.sidglobal.cloud"
                }
            ]
        },
        {
            "branchPattern": ".*release.*",
            "deploymentInfo": [
                {
                    "org": "sidgs-hybrid",
                    "env": "default",
                    "host": "default"
                }
            ]
        },
        {
            "branchPattern": ".*RC.*",
            "deploymentInfo": [
                {
                    "org": "sidgs-hybrid",
                    "env": "dev-4",
                    "host": "server.apigee-hybrid-runtime.sidglobal.cloud"
                }
            ]
        }
    ]
}'
