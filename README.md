# k8s-demos
A collection of demonstration resources for Kubernetes

## Images

### Registries

### Login to AWS Private Registry

`docker run --rm -it -v ~/.aws:/root/.aws amazon/aws-cli ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin <registry FQDN>`

### Login to AWS Public Registry

`docker run --rm -it -v ~/.aws:/root/.aws amazon/aws-cli ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws`
