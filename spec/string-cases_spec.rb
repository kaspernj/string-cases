require "spec_helper"

describe "StringCases" do
  it "#camel_to_snake" do
    expect(StringCases.camel_to_snake("TestSomethingWee")).to eq "test_something_wee"
  end

  it "#snake_to_camel" do
    expect(StringCases.snake_to_camel("test_something_wee")).to eq "TestSomethingWee"
  end

  describe "#pluralize" do
    it "pluralizes normal words" do
      expect(StringCases.pluralize("user")).to eq "users"
      expect(StringCases.pluralize("key")).to eq "keys"
    end

    it "pluralizes words ending with 'y'" do
      expect(StringCases.pluralize("category")).to eq "categories"
    end
  end

  describe "#singularize" do
    it "singularizes normal words" do
      expect(StringCases.singularize("users")).to eq "user"
      expect(StringCases.singularize("keys")).to eq "key"
    end

    it "singularizes words ending with 'ies'" do
      expect(StringCases.singularize("categories")).to eq "category"
    end
  end

  describe "#constantize" do
    it "works with simple classes" do
      expect(StringCases.constantize("String")).to eq String
    end

    it "works with namespaces" do
      require "weakref"
      expect(StringCases.constantize("WeakRef::RefError")).to eq WeakRef::RefError
    end
  end

  describe "#hash_keys" do
    it "symbolizes keys" do
      result = StringCases.symbolize_keys("test1" => "test1val", "test2" => {"test3" => "test3val"})
      expect(result).to eq(test1: "test1val", test2: {"test3" => "test3val"})
    end

    it "stringify keys" do
      result = StringCases.stringify_keys(test1: "test1val", test2: {test3: "test3val"})
      expect(result).to eq("test1" => "test1val", "test2" => {test3: "test3val"})
    end

    it "symbolizes keys recursively" do
      result = StringCases.symbolize_keys({"test1" => "test1val", "test2" => {"test3" => "test3val"}}, recursive: true)
      expect(result).to eq(test1: "test1val", test2: {test3: "test3val"})
    end

    it "stringify keys recursively" do
      result = StringCases.stringify_keys({test1: "test1val", test2: {test3: "test3val"}}, recursive: true)
      expect(result).to eq("test1" => "test1val", "test2" => {"test3" => "test3val"})
    end
  end
end
