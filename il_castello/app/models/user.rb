class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  has_many :cars, :dependent => :destroy
  has_many :citations, :dependent => :destroy
end
