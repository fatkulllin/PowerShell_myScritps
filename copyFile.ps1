#$ADComputer = @(Get-ADComputer -Filter * -SearchBase "OU=Компьютеры, OU=Компания, DC=org, DC=company,DC=ru" | Sort | Select -Expand Name)
$ADComputer = @("user1","user2")
ForEach ($item in $ADComputer){


IF((Test-Path -Path "\\$item\C$\Program Files\Zabbix Agent 2") -eq $true) {

Write-Host $item
Copy-Item -Path "D:\Zabbix_Agent\zabbix_agent2.conf" -Destination "\\$item\C$\Program Files\Zabbix Agent 2\"
Invoke-Command -ComputerName $item -ScriptBlock {Restart-Service -Name 'Zabbix Agent 2'}

}
}
