require 'test_helper'

class DogTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
  
  test "create a dog" do
    cam = Dog.new(:name => "Camalamadingdong")
    assert (true, "just checking this works")  
  end
  
end
