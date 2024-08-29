class CreateWeatherData < ActiveRecord::Migration[7.1]
  def change
    create_table :weather_data do |t|
      t.references :region, null: false, foreign_key: true
      t.references :search_history, null: false, foreign_key: true
      t.datetime :date, null: false
      t.float :temperature, null: false
      t.float :rain_probabilitie, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
