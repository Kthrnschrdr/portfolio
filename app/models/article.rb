class Article < ActiveRecord::Base
  attr_accessible :body, :draft, :title
  
  # scope :long where(relative_length => "long")
  # scope :is_featured where(featured => true)
  
  def excerpt(body)
    excerptarray = body.split("")
    return excerptarray[0...29].join("")
  end
  
  def relative_length(body)
    wordsarray = body.split(" ")
    if wordsarray.length >= 500
      return "long"
    elsif (wordsarray.length >= 100) && (wordsarray.length < 500)
      return "medium"
    else wordsarray.length <= 99
      return "short"
    end
  end
  
  def featured
  end
  
end
