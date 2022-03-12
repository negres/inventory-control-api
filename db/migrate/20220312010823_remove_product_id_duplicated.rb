class RemoveProductIdDuplicated < ActiveRecord::Migration[7.0]
  def change
    remove_column :sales, :products_id
  end
end
