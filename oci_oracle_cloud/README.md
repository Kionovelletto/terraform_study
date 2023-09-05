## Terraform na Oracle Cloud Infrastructure(OCI)

- Instalando o OCI CLI:
```bash
bash -c "$(curl -L https://raw.githubusercontent.com/oracle/oci-cli/master/scripts/install/install.sh)"
```

- Configurando o CLI pelo default setup:
```bash
oci setup config
```

- Configurar o CLI manualmente:
```bash
mkdir -p ~/.oci/
vim ~/.oci/config
```

- Preencha e cole no config o template abaixo:
-- Nessa etapa, colete os dados na OCI e gere a API Key.pem

```bash
[DEFAULT]
user=***********
fingerprint=***********
tenancy=***********
region=************************
key_file=/home/<USER>/.oci/kionovelletto.pem
```

- Validando a configuração:
```bash
oci os ns get
```

Documentação oficial de instalação CLI: https://www.oracle.com/br/technical-resources/articles/cloudcomp/utilizando-oci-cli-p1.html

Documentação do provider: https://registry.terraform.io/providers/oracle/oci/latest/docs