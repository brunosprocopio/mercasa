class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.references :sub_category, foreign_key: true
      t.string :producer
    end
  end
end
