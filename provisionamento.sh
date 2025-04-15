#!/bin/bash

echo "Iniciando o provisionamento do sistema..."

# Remover estruturas antigas (opcional)
rm -rf /publico /adm /ven /sec4
userdel -r carlos debora josefina maria sebastiana amanda joao roberto 2>/dev/null
groupdel GRP_ADM GRP_VEN GRP_SEC 2>/dev/null

# Criar diretórios
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec4

# Criar grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Criar usuários e adicionar aos grupos

# GRP_ADM
useradd carlos -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM

# GRP_VEN
useradd debora -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN

# GRP_SEC
useradd josefina -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC

# Definir proprietários dos diretórios
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec4
chown root:root /publico

# Definir permissões
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec4
chmod 777 /publico

echo "Provisionamento concluído com sucesso!"
