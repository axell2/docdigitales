class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :rfc, presence: true, uniqueness: true
  validates :enterprice,presence: true
  validates :rfc, :format => { :with => %r{/^([a-zA-Z&Ñ]{3,4}\d{6}[a-zA-Z0-9]{3})$/}i,
    :message => "Revise el formato de su RFC" }, length: { maximum: 13, minimum: 12}
end
