# 🪟 Windows – Scripts PowerShell Úteis

Scripts desenvolvidos para tarefas comuns em ambientes Windows, utilizando PowerShell.

---

### ⚙️ **Gerenciamento de Sistema**

- 🔧 [Remoção de Programas usando PowerShell](https://github.com/matheussdsi/Windows/blob/a23c297a992dc3e6a0865c0f069aefd438b30e34/Remover_programs.ps1)  
  Script que remove aplicativos específicos do sistema usando comandos via PowerShell, útil para automação de limpeza.

- 🔍 [Verificar Versão do PowerShell](https://github.com/matheussdsi/Windows/blob/91160d5b9090dd06a29d5961befa72c7628e60ac/Get_version.ps1)  
  Verifica a versão atual do PowerShell instalada na máquina, ideal para inventário e compatibilidade.

- 🧰 [Gerenciando Serviços via PowerShell](https://github.com/matheussdsi/Windows/blob/ef282fb9418bab37ac993d11eb64ffc87bba5755/Managing%20_Service.ps1)  
  Permite iniciar, parar, reiniciar ou consultar o status de serviços do Windows de forma prática.

- 🔌 [Desligando e Reiniciando Computadores](https://github.com/matheussdsi/Windows/blob/0f6c65f7cad021790f18b4aba13a844cf0eb9f08/shutdown_reset_remote.ps1)  
  Realiza desligamento ou reinicialização local ou remota de máquinas com mensagens personalizadas.

---

### 🌐 **DNS**

- 📤 [Exportar Zona DNS](https://github.com/matheussdsi/Windows/blob/main/DNS_EXPORT.ps1)  
  Exporta zonas de DNS do servidor para arquivos `.dns`, facilitando backup ou migração.

- 📥 [Importar Zona DNS](https://github.com/matheussdsi/Windows/blob/main/import_DNS.ps1)  
  Importa arquivos de zona DNS previamente exportados para o servidor DNS do Windows.

---

### 🔐 **Certificados**

- 🛡️ [Criando Certificados com PowerShell](https://github.com/matheussdsi/Windows/blob/main/Create_certificate.ps1)  
  Gera certificados digitais autoassinados e os exporta em formatos `.cer` e `.pfx`, ideal para testes e ambientes internos.

---

### 🖥️ **Hyper-V**

Scripts para automação de tarefas no Hyper-V usando PowerShell.

- 📦 [Instalar Módulo do Hyper-V](https://github.com/matheussdsi/Hyper-V/blob/5ebd0347a62d7b71ec4786fb92519c537c5d5900/Install_module_Windows.ps1)  
  Instala o módulo do Hyper-V no Windows, necessário para executar cmdlets relacionados à virtualização.

- 🛠️ [Criar Máquina Virtual via PowerShell](https://github.com/matheussdsi/Hyper-V/blob/f30c51c0ba802ce5233ffa6613a33279020626fd/Create_vm1.ps1)  
  Automatiza a criação de VMs no Hyper-V com configurações básicas, como memória, disco e nome.

- 💿 [Montar ISO em Máquina Virtual](https://github.com/matheussdsi/Hyper-V/blob/3ba4a8097d4495cfed5ebf2189e834dafd6fea6b/Mount_ISO.ps1)  
  Anexa uma imagem `.iso` a uma VM existente, útil para instalação de sistemas operacionais.

- 🔁 [Iniciar ou Parar Máquina Virtual](https://github.com/matheussdsi/Hyper-V/blob/c99f62aacbb581c8ad9a8267e6c5436b372f0322/Start_Stop.ps1)  
  Script simples para iniciar ou desligar uma VM diretamente via linha de comando PowerShell.

---

### 🧩 **Active Directory**

Scripts para auxiliar na administração do Active Directory de forma automatizada.

- 🗂️ [Listar Contas Desativadas](https://github.com/matheussdsi/Active_Directory_repository/blob/c2b9421b34dc49799df9638069aa8a98af4063d1/Contas_desativas.ps1)  
  Lista todas as contas de usuário que estão desativadas no domínio.

- 🚫 [Desativar Usuários em Massa](https://github.com/matheussdsi/Active_Directory_repository/blob/1a8886640f46c0faddb6f76a1276e3c815453d65/Disable_Account.ps1)  
  Desativa múltiplos usuários com base em uma lista, ideal para desligamentos em lote.

- 🔄 [Trocar UPN em Massa](https://github.com/matheussdsi/Active_Directory_repository/blob/a543833739b79a964f92af53b51d05069652412a/change_UPN_OU.ps1)  
  Atualiza o UPN dos usuários de uma OU para refletir novos domínios ou padrões.

- 📆 [Remover Expiração de Contas em Massa](https://github.com/matheussdsi/Active_Directory_repository/blob/a543833739b79a964f92af53b51d05069652412a/limpar_ADAccountExpiration.ps1)  
  Remove a data de expiração definida em contas de usuários.

- 🕵️‍♂️ [Revisar Usuários em Grupos de Gerência](https://github.com/matheussdsi/Active_Directory_repository/blob/2df6ed394a9564e840a1f134d18fb7a7a23ab979/AD%202.0.ps1)  
  Lista usuários que estão em grupos sensíveis como Admins do Exchange e AD.

- 💤 [Revisar Usuários Inativos por Dias](https://github.com/matheussdsi/Active_Directory_repository/blob/d24abbfe3410e70bf3bc34624114173e0a6d4a88/Users_Inat.ps1)  
  Filtra usuários que não acessam o domínio há X dias, facilitando limpezas periódicas.

- 🔐 [Verificar Política de Senha da Organização](https://github.com/matheussdsi/Active_Directory_repository/blob/fb02d8f8d534b2e9735072814e09e28bb3628e6b/AD%202.0.ps1)  
  Exibe informações da política de senha aplicada no domínio.

- 📅 [Revisar Última Alteração de Senha por OU](https://github.com/matheussdsi/Active_Directory_repository/blob/ea7e23d0e65cfe433dba1aa705b29d8a2dfe688c/PasswordLastSet.Ps1)  
  Mostra a data da última alteração de senha dos usuários por unidade organizacional.

- 📆 [Revisar Alteração de Senha por Data Específica](https://github.com/matheussdsi/Active_Directory_repository/blob/23912c2b0ce6e0e4b025b85e95a088388489e3c5/PasswordLastSet_data.ps1)  
  Lista usuários que alteraram a senha até uma determinada data, útil para auditorias.
