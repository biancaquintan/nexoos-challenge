class CreditRequest < ApplicationRecord
  belongs_to :requester

  def calc
    @value = self.value
    @taxa = self.taxa
    @periods = self.periods
    
    @value*(((1+@taxa)**@periods)*@taxa)/(((1+@taxa)**@periods)-1)
  end
end
