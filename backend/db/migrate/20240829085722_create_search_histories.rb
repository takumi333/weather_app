class CreateSearchHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :search_histories do |t|
      t.references :region, null: false, foreign_key: true
      t.datetime :date
      t.integer :weather_type

      t.timestamps
    end
  end
end
