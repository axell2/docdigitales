class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :rfc
      t.string :telephone_number
      t.timestamps
    end
  end
end
