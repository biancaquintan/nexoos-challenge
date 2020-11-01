class CreateTelephones < ActiveRecord::Migration[5.2]
  def change
    create_table :telephones do |t|
      t.string :ddd
      t.string :phone
      t.references :requester, null: false, foreign_key: true

      t.timestamps
    end
  end
end
