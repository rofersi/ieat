class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  
  has_one :restaurant
  enum role: %i[admin restaurant customer]
  # o %i indica que um array de symbol. Substitui essa notação: [:admin, :restaurant, :customer]

end
