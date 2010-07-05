class Calculation
    include MongoMapper::Document
  key :name_your_calculation, String
  validates_presence_of :name_your_calculation

  key :amount, Float
  validates_presence_of :amount

  key :term_type, String, :default => 'Years'
  validates_presence_of :term_type

  key :term, Float
  validates_presence_of :term   

  key :apy_or_apr, String, :default => 'apr'
  validates_presence_of :apy_or_apr

  key :rate, Float
  validates_presence_of :rate

  key :compounding_times, String, :default => 'annually'
  validates_presence_of :compounding_times, :if => :should_validate_compounding_times

  def should_validate_compounding_times
    apy_or_apr.eql?('apr')
  end

  
end
