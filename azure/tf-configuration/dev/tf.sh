#!/bin/bash

apply () {
    pwd
    cd 1vnet
    terraform init
    # terraform apply --auto-approve
    # cd ../2
    # terraform init
    # terraform apply --auto-approve
}

destory () {
    pwd
    cd 1vnet
    # terraform destroy --auto-approve
    # cd ../2
    # terraform destroy --auto-approve
}

case "$1" init
    "apply") apply
    ;;
    "destroy") destory
    ;;    
esac

# Use ./tf.sh apply to create
# Use ./tf.sh destory to destory
