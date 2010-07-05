require 'test_helper'

class CalculationTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Calculation.new.valid?
  end
end
