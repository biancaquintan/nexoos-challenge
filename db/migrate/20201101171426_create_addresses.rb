class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.text :street
      t.integer :number
      t.string :city
      t.string :state
      t.string :cep

      t.timestamps
    end
  end
end
