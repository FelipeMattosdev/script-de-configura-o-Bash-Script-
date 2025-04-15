# 🛠️ Provisionamento de Usuários e Diretórios no Linux

Este projeto tem como objetivo realizar o provisionamento automatizado de usuários, grupos e diretórios em sistemas Linux, utilizando um script Bash.

---

## 🔧 Funcionalidades

- Exclusão de diretórios, usuários e grupos previamente existentes;
- Criação de diretórios para setores:
  - `/publico`
  - `/adm`
  - `/ven`
  - `/sec4`
- Criação dos grupos:
  - `GRP_ADM`
  - `GRP_VEN`
  - `GRP_SEC`
- Criação de usuários com senha padrão `Senha123` e associação a grupos;
- Definição de permissões:
  - Diretórios dos grupos: acesso restrito ao grupo (`770`);
  - Diretório `/publico`: acesso total para todos os usuários (`777`);
- O dono dos diretórios é o `root`.

---

## 👤 Usuários e Grupos

| Grupo     | Usuários                        |
|-----------|---------------------------------|
| GRP_ADM   | carlos, maria, joao             |
| GRP_VEN   | debora, sebastiana, roberto     |
| GRP_SEC   | josefina, amanda                |

---

## 🚀 Como executar

1. Clone este repositório:
   ```bash
   git clone  https://github.com/FelipeMattosdev/script-de-configura-o-Bash-Script-.git
