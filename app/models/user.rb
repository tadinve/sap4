# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  role       :string(255)
#  company    :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class User < ActiveRecord::Base
   attr_accessible :name, :email, :role, :company, :password, :password_confirmation
   has_secure_password

   validates :name, :email, :role, :company, presence: true

end
