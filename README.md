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
