require 'test_helper'

class HelloTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Hello.new.valid?
  end
end
