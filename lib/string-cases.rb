class StringCases
  def self.snake_to_camel(str)
    str.to_s.split("_").map(&:capitalize).join("")
  end

  def self.camel_to_snake(str)
    str.to_s.gsub(/(.)([A-Z])/,'\1_\2').downcase
  end

  def self.pluralize(str)
    str = "#{str}"

    if str.match(/([^aeiouy]|qu)y$/i)
      str = str.gsub(/y\Z/, "ies")
    else
      str << "s"
    end

    str
  end

  def self.singularize(str)
    str = "#{str}"

    if str.end_with?("ies")
      str = str.gsub(/ies\Z/, "y")
    else
      str = str.gsub(/s\Z/, "")
    end

    str
  end
end
