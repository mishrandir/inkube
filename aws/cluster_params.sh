echo "exporting"
export K8S_MASTER_SIZE=${K8S_MASTER_SIZE:-t2.micro}
export K8S_MASTER_COUNT=3
export K8S_NODE_COUNT=3
export K8S_NODE_SIZE=${K8S_NODE_SIZE:-t2.micro}

echo "exported"
echo "K8S_MASTER_SIZE : " $K8S_MASTER_SIZE