class Contact < ActiveRecord::Base
  attr_accessible :email, :message, :name, :subject
  
  validates :name, presence: true
  
end
