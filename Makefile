default: 
	git pull
	terraform init 
	terraform plan token=${token}
	terraform apply -auto-approve token=${token}