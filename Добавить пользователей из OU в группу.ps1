Get-ADUser -Filter * -SearchBase 'OU=Пользователи,OU=Компания,DC=org,DC=company,DC=ru'|ForEach-Object -process {Add-ADGroupMember -identity "Internet-Standard" -Members $_.SamAccountName}
