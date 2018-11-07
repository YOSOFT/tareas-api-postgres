class NotificacionMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notificacion_mailer.nueva_cuenta.subject
  #
  def nueva_cuenta(usuario)
    @usuario = usuario
    @greeting = "Hi"

    mail to: usuario.email, subject: "La cuenta esta activa para #{usuario.email}" 
  end
end
