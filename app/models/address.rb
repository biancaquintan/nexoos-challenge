class Address < ApplicationRecord
    belongs_to :requester

    validates_presence_of :street, :number, :city, :state
end
