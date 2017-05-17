<# Power shell Script to test email relay configuration
    by Michael Ryan
    Created 17/05/2017
    #>
 
# Specify a sender email address
$emailFrom = "info@domain.com"
# Specify a recipient email address
$emailTo = "email@outlook.com, 9365551212@vtext.com"
# Put in a subject line
$subject = "Test Email Relay"
# Add the Service state from line 6 to some body text
$body = "If the email relay is configured correctly, you have received this message"
# Put the DNS name or IP address of your SMTP Server
$smtpServer = "127.0.0.1"
$smtp = new-object Net.Mail.SmtpClient($smtpServer)
# This line pieces together all the info into an email and sends it
$smtp.Send($emailFrom, $emailTo, $subject, $body)
