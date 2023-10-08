   $PCname = @(Get-Content D:\2.txt)
    ForEach($PCname1 in $PCname) {
Send-MailMessage -From $PCname1@mail.ru -To user@mail.ru -Body '123' -Subject 'ACAD' -SmtpServer 192.168.0.1-Encoding UTF8}
