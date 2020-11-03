require 'rails_helper'

RSpec.describe Address, type: :model do
    context "Validade de um Endereço" do
        it "Cadastro válido?" do
            address = Address.new
            address.street = "Rua das Flores"
            address.number = "22"
            address.city = "Santos"
            address.state = "São Paulo"

            requester = Requester.new         
            address.requester = requester

            expect(address.valid?).to be_truthy
        end

        it "Cadastro inválido?" do
            address = Address.new
            address.street = "Rua das Flores"
            address.number = "22"
            address.city = nil

            requester = Requester.new         
            address.requester = requester

            expect(address.valid?).to be_falsey
        end
    end
end