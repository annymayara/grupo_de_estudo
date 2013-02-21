from_nome = 'Mauricio Lima    '
from_mail = 'leilaneonline@gmail.com'
to_nome = 'Destinatario'
to_mail = 'annymayara.s@gmail.com'
servidor = 'smtp.gmail.com'
porta = 587
dominio = 'gmail.com'
usuario = 'leilaneonline@gmail.com'
senha = 'Danny123'
assunto = 'Enviando e-mail com Ruby'
texto = 'Texto do email'


msg = '
From: #{from_nome} <#{from_mail}>
To: #{to_nome} <#{to_mail}>
Subject: #{assunto}
Content-type: text/plain
Date: #{Time.new}
 
#{texto}

'

require 'rubygems'
require 'net/smtp'
 
Net::SMTP.start(servidor, porta, dominio, usuario, senha, :plain) do |smtp|
  smtp.send_message(msg, usuario, to_mail)
end