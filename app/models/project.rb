class Project < ActiveRecord::Base
  attr_accessible :github, :lesson, :name, :status, :summary
  
  validates :name, presence: true
  
end
