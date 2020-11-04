require 'rails_helper'

RSpec.describe CreditRequest, type: :model do
    context "Validação de Solicitação de Crédito" do
        it "Cadastro válido?" do
            request = CreditRequest.new
            request.value = 100000.00
            request.taxa = 1.5
            request.periods = 12

            requester = Requester.new         
            request.requester = requester

            expect(request.valid?).to be_truthy
        end

        it "Cadastro inválido?" do
            request = CreditRequest.new
            request.value = 100000.00
            request.taxa = nil
            request.periods = nil

            requester = Requester.new         
            request.requester = requester

            expect(request.valid?).to be_falsey
        end

        it "Nº de períodos válido?" do
            request = CreditRequest.new
            request.value = 100000.00
            request.taxa = 1.1
            request.periods = 123

            requester = Requester.new         
            request.requester = requester

            expect(request.valid?).to be_falsey
        end
    end
end