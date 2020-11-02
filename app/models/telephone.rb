class Telephone < ApplicationRecord
  belongs_to :requester

  validates_presence_of :ddd, :phone
end
