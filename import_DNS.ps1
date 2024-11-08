# Obtém o nome do servidor DNS a partir do nome do computador
$DNSServer = Get-Content env:computername

# Define o diretório de backup onde os arquivos de zona DNS estão armazenados
$BackupFolder = "C:\Windows\System32\dns\backup"

# Caminho para o arquivo CSV que contém as informações das zonas DNS
$zonesFile = Join-Path $BackupFolder "zonesFile.csv"

# Importa as zonas DNS do arquivo CSV
$zones = Import-Csv $zonesFile
$zones | ForEach-Object {

    # Define as variáveis para o nome, IP do servidor master e permissões de atualização da zona
    $path = "backup\" + $_.name
    $Zone = $_.name
    $IP = $_.MasterServers
    $Update = $_.AllowUpdate

    # Verifica se a zona está integrada ao Active Directory
    if ($_.DsIntegrated -eq $True) {
        Switch ($_.ZoneType) {
            1 {
                # Cria a zona como zona primária integrada ao Active Directory
                $cmd0 = "dnscmd {0} /ZoneAdd {1} /primary /file {2} /load" -f $DNSServer, $Zone, $path
                Invoke-Expression $cmd0
                $cmd1 = "dnscmd {0} /ZoneResetType {1} /dsprimary" -f $DNSServer, $Zone
            }

            3 {
                # Cria a zona como stub zone integrada ao Active Directory
                $cmd1 = "dnscmd {0} /ZoneAdd {1} /dsstub {2} /load" -f $DNSServer, $Zone, $IP
            }

            4 {
                # Cria a zona como forwarder zone integrada ao Active Directory
                $cmd1 = "dnscmd {0} /ZoneAdd {1} /dsforwarder {2} /load" -f $DNSServer, $Zone, $IP
            }
        }
    }
    else {
        # Se a zona não estiver integrada ao Active Directory
        Switch ($_.ZoneType) {
            1 {
                # Cria a zona como zona primária
                $cmd1 = "dnscmd {0} /ZoneAdd {1} /primary /file {2} /load" -f $DNSServer, $Zone, $path
            }

            2 {
                # Cria a zona como zona secundária
                $cmd1 = "dnscmd {0} /ZoneAdd {1} /secondary {2}" -f $DNSServer, $Zone, $IP
            }

            3 {
                # Cria a zona como stub zone
                $cmd1 = "dnscmd {0} /ZoneAdd {1} /stub {2}" -f $DNSServer, $Zone, $IP
            }

            4 {
                # Cria a zona como forwarder zone
                $cmd1 = "dnscmd {0} /ZoneAdd {1} /forwarder {2}" -f $DNSServer, $Zone, $IP
            }
        }
    }

    # Executa o comando de restauração da zona DNS
    Invoke-Expression $cmd1

    # Configura o tipo de atualização permitida para a zona
    Switch ($_.AllowUpdate) {
        # Sem atualização permitida
        0 {
            $cmd2 = "dnscmd /Config {0} /allowupdate {1}" -f $Zone, $Update
        }
        
        # Atualizações seguras e não seguras
        1 {
            $cmd2 = "dnscmd /Config {0} /allowupdate {1}" -f $Zone, $Update
        }

        # Apenas atualizações seguras
        2 {
            $cmd2 = "dnscmd /Config {0} /allowupdate {1}" -f $Zone, $Update
        }
    }

    # Executa o comando para configurar as permissões de atualização da zona DNS
    Invoke-Expression $cmd2
}
