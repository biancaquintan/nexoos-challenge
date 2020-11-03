require 'rails_helper'

RSpec.describe Requester, type: :model do
    context "Validade de um Solicitante" do
        it "Cadastro válido?" do
            requester = Requester.new
            requester.company_name = "Artigos Ltda."
            requester.cnpj = "65674216000188"

            expect(requester.valid?).to be_truthy
        end

        it "Cadastro inválido?" do
            requester = Requester.new
            requester.company_name = "Artigos Ltda."
            requester.cnpj = nil

            expect(requester.valid?).to be_falsey
        end

        it "CNPJ válido?" do
            requester = Requester.new
            requester.company_name = "Artigos Ltda."
            requester.cnpj = "65674216000188"

            expect(requester.valid?).to be_truthy
        end

        it "CNPJ tamanho inválido?" do
            requester = Requester.new
            requester.company_name = "Artigos Ltda."
            requester.cnpj = "656742160001881111"

            expect(requester.valid?).to be_falsey
        end

        it "CNPJ com letras inválido?" do
            requester = Requester.new
            requester.company_name = "Artigos Ltda."
            requester.cnpj = "ABC1456232212d"

            expect(requester.valid?).to be_falsey
        end
    end
end