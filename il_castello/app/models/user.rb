class User < ActiveRecord::Base
    has_many :cars, :dependent => :destroy
    has_many :citations, :dependent => :destroy
end
