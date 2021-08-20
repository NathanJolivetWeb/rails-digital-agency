class AddLangagesAndLevelToOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :langage1, :string
    add_column :offers, :langage2, :string
    add_column :offers, :level1, :integer
    add_column :offers, :level2, :integer
  end
end
