class CreateSettingInformations < ActiveRecord::Migration[7.1]
  def change
    create_table :setting_informations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :search_history, null: false, foreign_key: true

      t.timestamps
    end
  end
end
