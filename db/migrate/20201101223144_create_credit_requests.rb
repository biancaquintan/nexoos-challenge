class CreateCreditRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :credit_requests do |t|
      t.string :value
      t.string :taxa
      t.integer :periods
      t.references :requester, null: false, foreign_key: true

      t.timestamps
    end
  end
end
