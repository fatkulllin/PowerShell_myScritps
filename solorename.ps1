$a = "name1"
$b = "name2"
Invoke-Command -ComputerName $a -ScriptBlock {msg * "Через 10 мин запланирована перезагрузка ПК. Сохраните все файлы и закройте программы!"}
Invoke-Command -ScriptBlock {echo Y | netdom renamecomputer $a /newname:$b /userd:org\user /passwordd:passwordd /REBoot:600}
Write-Host 'Сейчас будет переименован ПК' $a 'на' $b
