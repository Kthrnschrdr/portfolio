module MarkdownProcessor
  
  def self.convert_to_h1(some_string)
    if some_string.start_with?('#')
      somestring = some_string.sub(/[#]/, "")
      return "<h1>#{somestring}</h1>"
    else
      return false
    end
  end
  
end