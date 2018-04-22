class CreateTexts < ActiveRecord::Migration[5.1]
  def change
    create_table :texts do |t|
      t.string :url
      t.text :text

      t.timestamps
    end
  end
end
