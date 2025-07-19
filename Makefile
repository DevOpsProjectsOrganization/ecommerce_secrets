default: 
	git pull
	terraform init 
	terraform plan -auto-approve -var token=$(token)
	terraform apply -auto-approve -var token=$(token)