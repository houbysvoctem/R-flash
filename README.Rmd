# sending email from R
This can be usefull, when you need R to let you know your computation is over. Unfortunately I have not found the solution for Linux server + R 3.3.2, which I was searching for. Following solution is for Windows Vista + R 3.3.2.

`
#options(download.file.method="libcurl")  #can be needed
library(mailR) #for windows

send.mail('email_from','email_to',
subject = "subject_of_email", body = "blablabla",
encoding = "iso-8859-1",
smtp = list(host.name = 'smtp.centrum.cz',port = 25, #get to know on web peages of your email provider
user.name = 'email_from',passwd = 'password_from'),
uthenticate = TRUE, send = TRUE)
`
