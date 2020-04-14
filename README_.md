# Cloud Compute & Cloud Storage
Deploy a django application on Cloud Compute and Cloud Storage

## Requirements
- python 3.7
- [Google Cloud SDK](https://cloud.google.com/sdk/docs/quickstart-macos)


## Set up
(1) Follow the steps in this document to initialize the [Google Cloud SDK](https://cloud.google.com/sdk/docs/quickstart-macos#initialize_the_sdk)

(2) Activate the bash script:
```
source ./bin/.activate.sh
```


## Deploy Boostrap
Deploy the following GCP components:
- VPC network: a virtual network within Google Cloud that can provide global connectivity via its own routes and firewall rules.
- Firewall rule: a Google Cloud firewall lets you allow or deny traffic to your instances.
- Instance template: a template used to create each VM instance in the managed instance group.
- Health check: a policy used by the load balancer to evaluate the responsiveness of the application on each VM instance.
- Storage bucket: allows world-wide storage and retrieval of any amount of data at any time.

*Command:*
```
deploy-bootstrap
```


## Deploy Application
*Command:*
```
deploy-app
```
