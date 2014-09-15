class Like < ActiveRecord::Base
  belongs_to :article
  attr_accessible :article_id, :ip_address  
end
