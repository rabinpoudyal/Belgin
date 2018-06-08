class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :terms_and_conditions, :acceptance => true
  has_one :shop

  validates :username, :presence => true, :length => {:minimum => 3, :maximum => 30}
  validates :first_name, :presence => true, :length => {:minimum => 3, :maximum => 30}
  validates :last_name, :presence => true, :length => {:minimum => 3, :maximum => 30}
  validates :country, :presence => true, :length => {:minimum => 3, :maximum => 30}
  validates :address, :presence => true, :length => {:minimum => 3, :maximum => 30}
  validates :city, :presence => true, :length => {:minimum => 3, :maximum => 30}


end
