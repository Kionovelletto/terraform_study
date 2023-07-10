# terraform_study
Repo dedicado ao estudo do terraform. :fire:

## Instalação no Linux :penguin:

#### Instalação do Terraform no Linux:
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli#install-terraform

## Instalação no Windows
#### Instalação do WSL2 no Windows:
https://learn.microsoft.com/pt-br/windows/wsl/install

#### Instalação do Chocolatey no Windows:
https://chocolatey.org/install

#### Instalação do Terraform no Windows:
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli


## Instalação no MacOS
#### Intalação do Terraform no MacOS:
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli#install-terraform

## Credências do AWS nos S.O como variável

#### Export para o linux:
```bash
export AWS_ACCESS_KEY_ID=SUA_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=SUA_SECRET_ACCESS_KEY
```

#### SET para o Windows:
```bash
SET AWS_ACCESS_KEY_ID=SUA_ACCESS_KEY_ID
SET AWS_SECRET_ACCESS_KEY=SUA_SECRET_ACCESS_KEY
```

#### ENV para o PowerShell:
```bash
$env:AWS_ACCESS_KEY_ID="SUA_ACCESS_KEY_ID"
$env:AWS_SECRET_ACCESS_KEY="SUA_SECRET_ACCESS_KEY"
```

## Credências do Micrsoft Azure nos S.O como variável

##### Export para o linux e MacOs:
```bash 
export ARM_CLIENT_ID=SEU_CLIENT_ID
export ARM_TENANT_ID=SUA_TENANT_ID
export ARM_SUBSCRIPTION_ID=SUA_SUBSCRIPTION_ID
export ARM_CLIENT_SECRET=SEU_CLIENT_SECRET
```

##### SET para o CMD Windows:
```bash
SET ARM_CLIENT_ID=SEU_CLIENT_ID
SET ARM_TENANT_ID=SUA_TENANT_ID
SET ARM_SUBSCRIPTION_ID=SUA_SUBSCRIPTION_ID
SET ARM_CLIENT_SECRET=SEU_CLIENT_SECRET
```

#### ENV para o PowerShell:
```bash $env:ARM_CLIENT_ID="SEU_CLIENT_ID"
$env:ARM_TENANT_ID="SUA_TENANT_ID"
$env:ARM_SUBSCRIPTION_ID="SUA_SUBSCRIPTION_ID"
$env:ARM_CLIENT_SECRET="SEU_CLIENT_SECRET"
```