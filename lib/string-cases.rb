class StringCases
  def self.snake_to_camel(str)
    return str.to_s.split("_").map{|w| w.capitalize }.join("")
  end

  def self.camel_to_snake(str)
    return str.to_s.gsub(/(.)([A-Z])/,'\1_\2').downcase
  end

  def self.pluralize(str)
    str = "#{str}"

    if str.end_with?("y")
      str = str.gsub(/y\Z/, "ies")
    else
      str << "s"
    end

    return str
  end

  def self.singularize(str)
    str = "#{str}"

    if str.end_with?("ies")
      str = str.gsub(/ies\Z/, "y")
    else
      str = str.gsub(/s\Z/, "")
    end

    return str
  end
end