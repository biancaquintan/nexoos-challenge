class AddReferencesToAddress < ActiveRecord::Migration[5.2]
  def change
    add_reference :addresses, :requester, foreign_key: true
  end
end
