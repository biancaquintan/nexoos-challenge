class CreditRequest < ApplicationRecord
  belongs_to :requester

  validates_numericality_of :taxa, :value, :periods
  validates_length_of :periods, :maximum => 2

  def calc
    @value = self.value
    @taxa = self.taxa/100
    @periods = self.periods
    
    @value*(((1+@taxa)**@periods)*@taxa)/(((1+@taxa)**@periods)-1)
  end
end
