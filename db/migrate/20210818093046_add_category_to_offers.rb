class AddCategoryToOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :category, :string
  end
end
