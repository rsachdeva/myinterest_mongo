require 'spec_helper'

describe Calculation do
  before(:all) do
   Calculation.destroy_all
   #just put all attributes as it is submitted. We will remove each required attribute to validate its presence
   @calculation = Calculation.new({"term"=>"5.0", "rate"=>"4.0", "term_type"=>"Years", "amount"=>"20000.0", "apy_or_apr"=>"apr", "name_your_calculation"=>"NationalCity", "compounding_times"=>"monthly"})
  end

  after(:each) do
    Calculation.destroy_all
  end

  it "should allow name, amount when present" do
    @calculation.save!
  end


  it "should force name to be present" do
    @calculation.name_your_calculation = nil
    lambda{@calculation.save!}.should raise_error(MongoMapper::DocumentNotValid)
  end

  it "should force amount to be present" do
    @calculation.amount = nil
    lambda{@calculation.save!}.should raise_error(MongoMapper::DocumentNotValid)
  end

  
end
