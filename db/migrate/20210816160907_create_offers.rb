class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :title
      t.text :description
      t.integer :price_per_day

      t.timestamps
    end
  end
end
