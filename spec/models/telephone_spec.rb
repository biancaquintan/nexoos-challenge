require 'rails_helper'

RSpec.describe Telephone, type: :model do
    context "Validade de um Contato" do
        it "Cadastro válido?" do
            telephone = Telephone.new
            telephone.ddd = "11"
            telephone.phone = "997878811"

            requester = Requester.new         
            telephone.requester = requester

            expect(telephone.valid?).to be_truthy
        end

        it "Cadastro inválido?" do
            telephone = Telephone.new
            telephone.ddd = "22"
            telephone.phone = nil

            requester = Requester.new         
            telephone.requester = requester

            expect(telephone.valid?).to be_falsey
        end
    end
end