require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "StringCases" do
  it "should convert camel-case-string to snake-case" do
    StringCases.camel_to_snake("TestSomethingWee").should eql("test_something_wee")
  end
  
  it "should convert snake-case-string to camel-case" do
    StringCases.snake_to_camel("test_something_wee").should eql("TestSomethingWee")
  end
end
