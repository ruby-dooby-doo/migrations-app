class MakeChangesToProducts < ActiveRecord::Migration[5.2]
  def change
    # rename title column to name
    rename_column :products, :title, :name
    # change description type to text
    change_column :products, :description, :text
    # change price to a decimal
    change_column :products, :price, :decimal, precision: 12, scale: 2
    # remove isbn
    remove_column :products, :isbn, :string
  end
end
