# Uber DevOps Project Part-3:

## Prerequisite:
1. Make sure to build docker-image of front-end using updated load-balancer ip of backend before continuing to follow the below process of deploying front-end over Azure

## Steps to deploy FE over Azure:
1. Clone the repository
2. Run the below terraform commands to create resources over AZ:
    1. terraform init
    2. terraform plan
    3. terraform apply
3. Run the below commands to setup k8s cluster over AZ:
    1. terraform output kube_config > ~/.kube/config-terraform-aks-demo
    2. export KUBECONFIG=~/.kube/config-terraform-aks-demo:~/.kube/config
    3. az aks get-credentials --resource-group kt-k8s-resources --name kt-k8s
    4. receive output: "Merged "kt-k8s" as current context in /Users/krutik/.kube/config"
    5. az aks browse --resource-group kt-k8s-resources --name kt-k8s
    6. kubectl apply -f fe.yml
4. Run the below commands to get info of the pods:
    1. kubectl get pods
    2. kubectl get svc
    3. You will get external ip. Copy and paste the ip over browser to see the frontend
