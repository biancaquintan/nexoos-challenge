class CreateRequesters < ActiveRecord::Migration[5.2]
  def change
    create_table :requesters do |t|
      t.string :razao_social
      t.string :cnpj

      t.timestamps
    end
  end
end
