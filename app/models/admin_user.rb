class AdminUser < ApplicationRecord
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable
  
  has_many :posts

  def self.ransackable_attributes(auth_object = nil)
    ["email", "name"]
  end
end
