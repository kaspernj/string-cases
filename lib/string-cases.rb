class StringCases
  def self.snake_to_camel(str)
    return str.to_s.split("_").map{|w| w.capitalize }.join("")
  end
  
  def self.camel_to_snake(str)
    return str.to_s.gsub(/(.)([A-Z])/,'\1_\2').downcase
  end
end