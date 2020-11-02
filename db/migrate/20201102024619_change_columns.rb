class ChangeColumns < ActiveRecord::Migration[5.2]
  def change
    change_column :credit_requests, :taxa, :float, using: 'taxa::float'
    change_column :credit_requests, :value, :float, using: 'value::float'
  end
end
