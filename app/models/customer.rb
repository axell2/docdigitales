class Customer < ApplicationRecord

validates :name, :rfc, presence: true
validates :telephone_number, length: { minimun: 10 , maximum: 10 }
validates :telephone_number, format: { with: /\A\d+\z/, message: "solo numeros son aceptados." }
validates :rfc, :format => { :with => %r{/^([a-zA-Z&Ñ]{3,4}\d{6}[a-zA-Z0-9]{3})$/}i,
    :message => "Revise el formato de su RFC" }, length: { maximum: 13, minimum: 12}
    
end
