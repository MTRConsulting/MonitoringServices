<# Power shell Script to send email
    by Michael Ryan
    Created 17/05/2017
    #>
 
# Get the state of any services starting Hamachi* from computer Server
$service = Get-WmiObject win32_service -computername server | select name,state | where { $_.name -like "Hamachi*"} | out-string
# Specify a sender email address
$emailFrom = "info@domain.com"
# Specify a recipient email address
$emailTo = "op1@domain.com, op2@domain.com, op3@domian.com"
# Put in a subject line
$subject = "Hamachi Service Alert"
# Add the Service state from line 6 to some body text
$body = $service + "If the service, LogMeIn Hamachi Tunneling Engine, fails to start it could prevent VPN from functioning properly.`nPlease restart it`n`nRegards,`nIT Dept`nSAP Services"
# Put the DNS name or IP address of your SMTP Server
$smtpServer = "127.0.0.1"
$smtp = new-object Net.Mail.SmtpClient($smtpServer)
# This line pieces together all the info into an email and sends it
$smtp.Send($emailFrom, $emailTo, $subject, $body)
