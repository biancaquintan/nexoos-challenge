class Requester < ApplicationRecord
    has_many :addresses
    has_many :telephones
    has_many :credit_requests

    accepts_nested_attributes_for :addresses, :telephones, reject_if: :all_blank, allow_destroy: true
end
