# == Schema Information
#
# Table name: users
#
#  id              :integer         not null, primary key
#  name            :string(255)
#  email           :string(255)
#  role            :string(255)
#  company         :string(255)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#  password_digest :string(255)
#  remember_token  :string(255)
#

class User < ActiveRecord::Base
   attr_accessible :name, :email, :role, :company, :password, :password_confirmation, :remember_token
   has_secure_password
   before_save :create_remember_token

   validates :name, :email, :role, :company, presence: true

   private

      def create_remember_token
          self.remember_token = SecureRandom.urlsafe_base64
      end

end
