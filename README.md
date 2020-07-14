Udacity Cloud DevOps Engineer Capstone

Step 1: For the Docker Application I forked "A hello world programm with docker and nginx forked from bijayee-saswata." I picked blue/green deployment.

Step 2: I used my Jenkins box from a previous module project.

Step 3: I opted to build my own cluster. I had been running minikube on my own desktop in the previous module. I learned that minikube does not run on EC2 instances because the VM's do not support virtualization (a VM within a VM). If you look at the blue branch, you will see that I tried to create EKS infrastracture with Ansible because that would probably allow more of the benefits of K8. However, I opted to configure Ansible to launch Bitnami Kubernetes Sandbox AMI instances on which I would deploy clusters. I would not opt to do this in production because the instances would not allow for scalability which EKS would. This is a learning exercise.

Much of the infrastructure as code was adapted from module 4, Lesson 2: Jenkins Pipeline and Deployment. I replaced the shell script which deploys Docker with one that deploys a Kubernetes cluster.

Step 4: See pictures.

Step 5: Since I do not want to delete the blue branch, but I have abandoned it. I named the other branch capitan. The pipelines are master/capitan instead of blue/green.  
