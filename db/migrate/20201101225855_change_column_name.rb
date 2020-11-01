class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :requesters, :razao_social, :company_name
  end
end
