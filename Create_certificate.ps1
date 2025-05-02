<#
.SYNOPSIS
Geração de certificado autoassinado para testes locais.

.DESCRIPTION
Este script cria um certificado autoassinado que pode ser utilizado para testes de autenticação, como em App Registrations no Azure AD.

Ele também exporta:
- A chave pública no formato .CER.
- O certificado completo (incluindo a chave privada) no formato .PFX.

.IMPORTANTE
Nunca armazene senhas em texto claro em ambientes de produção ou repositórios públicos. Para segurança, utilize variáveis de ambiente ou cofre de credenciais.

#>

# Definindo o nome do certificado
$certSubject = "app_registration_validade"

# Gerando o certificado autoassinado
$Certificate = New-SelfSignedCertificate `
    -Subject $certSubject `
    -CertStoreLocation "Cert:\CurrentUser\My"

# Caminho de exportação
$exportPath = "C:\Certiicados\Certificates"

# Nome do arquivo .CER
$certname = "$certSubject.cer"

# Exportando a chave pública (.cer)
Export-Certificate `
    -Cert $Certificate `
    -FilePath "$exportPath\$certname"

# Convertendo a senha para SecureString
# (⚠️ Troque a senha abaixo por uma segura e armazenada corretamente em produção!)
$Pwd = ConvertTo-SecureString -String "P@ssw0rd" -Force -AsPlainText

# Exportando o certificado completo (.pfx)
Export-PfxCertificate `
    -Cert $Certificate `
    -FilePath "$exportPath\Certificates.pfx" `
    -Password $Pwd
