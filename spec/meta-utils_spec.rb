require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require File.expand_path(File.dirname(__FILE__) + '/regular_methods')

describe "dp" do
  before do
    @stdout_string = StringIO.new
    $stdout = @stdout_string
  end
  
  it "should support clean debug prints" do
    some_method
    @stdout_string.string.should == "name=\"Niclas\", @age=38, team=[\"Magnus\", \"Fredrik\", \"Jonas\"]\n"
  end
end
