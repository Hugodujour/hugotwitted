# email:string
# password_digest:string
#
# password:string virtual
# password_confirmation:string virtual


class User < ApplicationRecord

	has_secure_password

	has_many :gossips

	validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, alert: "must be a valid email adress" }
end