$day = Get-Date -Format %d

switch ( $day )
{
    26 { Send-MailMessage -From it@company.ru -To user1@company.ru -BodyAsHtml -Body 'Добрый день! ' -Subject 'Заполнить' -SmtpServer 192.168.0.1 -Encoding UTF8    }
    28 { Send-MailMessage -From it@company.ru -To user2@company.ru -BodyAsHtml -Body 'Добрый день! ' -Subject 'Заполнить' -SmtpServer 192.168.0.1 -Encoding UTF8    }
    29 { Send-MailMessage -From it@company.ru -To user3@company.ru -BodyAsHtml -Body 'Добрый день! ' -Subject 'Заполнить' -SmtpServer 192.168.0.1 -Encoding UTF8    }
}
