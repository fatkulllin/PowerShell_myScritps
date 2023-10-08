$ADComputer = @(Get-ADComputer -Filter * -SearchBase "OU=Компьютеры, OU=Компания, DC=org, DC=company, DC=ru" | Sort | Select -Expand Name)
$ADComputer

(gc D:\text.txt) -replace '111', $ADComputer| Out-File -encoding ASCII \\$ADComputer\D$\text.txt
