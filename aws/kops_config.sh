# Provision resources on aws for a k8s cluster assuming all required variables are in place
kops create cluster \
	--name k8s.original4sure.com \
	--cloud aws \
	--zones ${AWS_AVBL_ZONES} \
	--master-size ${K8S_MASTER_SIZE} \
	--master-count ${K8S_MASTER_COUNT} \
	--node-count ${K8S_NODE_COUNT} \
	--node-size ${K8S_NODE_SIZE} \
	--master-zones ${AWS_AVBL_ZONES} \
	--state ${AWS_KOPS_STATE_STORE} \
	--dns-zone ${AWS_K8S_HOSTED_ZONE} \
	--dns private \
	--topology private \
	--networking weave \
	--target terraform \
	--bastion=true


