# Obtém o nome do servidor DNS a partir do nome do computador
$DNSServer = Get-Content env:computername

# Define o diretório de backup para armazenar os arquivos de zona DNS
$BackupFolder = "c:\Windows\System32\DNS\backup"
$zonesFile = Join-Path $BackupFolder "zonesFile.csv"

# Se o diretório não existir, ele será criado
if (-not(Test-Path $BackupFolder)) {
    New-Item $BackupFolder -Type Directory | Out-Null
} 
# Se o diretório existir, o conteúdo será removido para evitar arquivos antigos
else {
    Remove-Item $BackupFolder"\*" -recurse
}

# Obtém as configurações de zona DNS do servidor
$List = Get-WmiObject -ComputerName $DNSServer -Namespace root\MicrosoftDNS -Class MicrosoftDNS_Zone

# Exporta as informações de configuração das zonas DNS para o arquivo $zonesFile
$list | Select-Object Name, ZoneType, AllowUpdate, @{Name = "MasterServers"; Expression = { $_.MasterServers } }, DsIntegrated | Export-csv $zonesFile -NoTypeInformation

# Exporta os arquivos das zonas DNS para o diretório de backup
$list | ForEach-Object {
    $path = "backup\" + $_.name
    $cmd = "dnscmd {0} /ZoneExport {1} {2}" -f $DNSServer, $_.Name, $path
    Invoke-Expression $cmd
}
