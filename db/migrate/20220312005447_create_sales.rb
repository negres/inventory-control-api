class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.references :products, :product, foreign_key: true
      t.timestamps
    end
  end
end
