class Telephone < ApplicationRecord
  belongs_to :requester

  validates_numericality_of :ddd, :phone
  validates_length_of :ddd, :is => 2
  validates_length_of :phone, :maximum => 9
end
