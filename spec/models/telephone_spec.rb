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

        it "Cadastro com ddd inválido?" do
            telephone = Telephone.new
            telephone.ddd = "8"
            telephone.phone = "997878811"

            requester = Requester.new         
            telephone.requester = requester

            expect(telephone.valid?).to be_falsey
        end

        it "Cadastro com tamanho inválido?" do
            telephone = Telephone.new
            telephone.ddd = "17"
            telephone.phone = "3422997878811"

            requester = Requester.new         
            telephone.requester = requester

            expect(telephone.valid?).to be_falsey
        end

        it "Cadastro de ddd com letras inválido?" do
            telephone = Telephone.new
            telephone.ddd = "A9"
            telephone.phone = "999278811"

            requester = Requester.new         
            telephone.requester = requester

            expect(telephone.valid?).to be_falsey
        end

        it "Cadastro de número de telefone com letras inválido?" do
            telephone = Telephone.new
            telephone.ddd = "17"
            telephone.phone = "AABB78811"

            requester = Requester.new         
            telephone.requester = requester

            expect(telephone.valid?).to be_falsey
        end
    end
end