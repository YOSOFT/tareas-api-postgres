class Usuario < ApplicationRecord
    has_many :tareas
    has_secure_password
    validates :email, presence: true
    after_create :enviar_email

   def to_token_payload
       {
           sub: id,
           email: email
       }
   end

   def enviar_email
    NotificacionMailer.nueva_cuenta(self).deliver_later
   end
end
