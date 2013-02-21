require 'gmail'

def envia_email (email_to='email_to@gmail.com')

	puts 'GMAIL: Conectando...'
	gmail = Gmail.new('email_from@gmail.com', 'senhaaqui')

	puts 'GMAIL: Enviando email para ' + email_to + '...'
	gmail.deliver do
		to email_to
		subject "Teste de e-mail usando a gem"
		html_part do
			content_type "text/html; charset=UTF-8"
			body "<p>Parte da mensagem com <strong>texto formatado</strong> em <em>html</em>.</p>"
		end
		add_file "/home/anny/Imagens/Cartao_de_Visita__Anny_Mayara.PNG"
	end
	
	puts 'GMAIL: Deslogando...'
	gmail.logout
end

envia_email