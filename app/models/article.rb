class Article < ActiveRecord::Base
  attr_accessible :body, :draft, :title
  
  def excerpt
    @article = Article.find(params[:id])
    excerptsplit = @article.body.split("")
    @excerpt = 
  end
  
  def relative_length
    @article = Article.find(params[:id])
    wordsarray = @article.body.split(" ")
    if wordsarray >= 500
      @length = "Long"
    elsif (wordsarray >= 100) && (wordsarray < 500)
      @length = "medium"
    else wordsarray <= 99
      @length = "short"
    end
  end
  
end
