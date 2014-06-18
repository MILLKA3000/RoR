class User < ActiveRecord::Base
  attr_accessible :name, :email, :login, :pass
  validates :name, presence: true
  validates :login, presence: true
  validates :email, presence: true
  validates :pass, presence: true
end
