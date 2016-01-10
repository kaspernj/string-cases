class StringCases
  def self.snake_to_camel(str)
    str.to_s.split("_").map(&:capitalize).join("")
  end

  def self.camel_to_snake(str)
    str.to_s.gsub(/(.)([A-Z])/, '\1_\2').downcase
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

  def self.constantize(str)
    str.to_s.split("::").inject(Module) do |mod_path, mod_to_find|
      mod_path.const_get(mod_to_find)
    end
  end

  def self.hash_keys(hash, mode, args = {})
    new_hash = {}
    hash.each do |key, value|
      case mode
      when :stringify
        key = key.to_s if key.is_a?(Symbol)
      when :symbolize
        key = key.to_sym if key.is_a?(String)
      else
        raise "Unknown mode: #{mode}"
      end

      value = StringCases.hash_keys(value, mode, args) if args[:recursive] && value.is_a?(Hash)
      new_hash[key] = value
    end

    new_hash
  end

  def self.symbolize_keys(hash, args = {})
    StringCases.hash_keys(hash, :symbolize, args)
  end

  def self.stringify_keys(hash, args = {})
    StringCases.hash_keys(hash, :stringify, args)
  end
end
