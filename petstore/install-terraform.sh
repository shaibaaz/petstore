TERRAFORM_ZIP_FILE=terraform_0.11.14_darwin_amd64.zip
TERRAFORM=https://releases.hashicorp.com/terraform/0.11.14
TERRAFORM_BIN=terraform

function install_terraform {
    if [ -z $(which $TERRAFORM_BIN) ]; then
       wget ${TERRAFORM}/${TERRAFORM_ZIP_FILE}
       unzip ${TERRAFORM_ZIP_FILE}
       sudo mv ${TERRAFORM_BIN} /usr/local/Cellar/${TERRAFORM_BIN}
       rm -rf ${TERRAFORM_ZIP_FILE}
       ln -s /usr/local/Cellar/terraform /usr/local/bin/terraform
       terraform version
    else
       echo "Terraform is most likely installed"
    fi
}

#sudo apt-get install unzip -y

install_terraform
