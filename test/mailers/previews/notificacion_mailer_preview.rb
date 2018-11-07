# Preview all emails at http://localhost:3000/rails/mailers/notificacion_mailer
class NotificacionMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notificacion_mailer/nueva_cuenta
  def nueva_cuenta
    NotificacionMailer.nueva_cuenta
  end

end
