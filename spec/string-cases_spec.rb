require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "StringCases" do
  it "#camel_to_snake" do
    StringCases.camel_to_snake("TestSomethingWee").should eq "test_something_wee"
  end

  it "#snake_to_camel" do
    StringCases.snake_to_camel("test_something_wee").should eq "TestSomethingWee"
  end

  describe "#pluralize" do
    it "pluralizes normal words" do
      StringCases.pluralize("user").should eq "users"
    end

    it "pluralizes words ending with 'y'" do
      StringCases.pluralize("category").should eq "categories"
    end
  end

  describe "#singularize" do
    it "singularizes normal words" do
      StringCases.singularize("users").should eq "user"
    end

    it "singularizes words ending with 'ies'" do
      StringCases.singularize("categories").should eq "category"
    end
  end
end
