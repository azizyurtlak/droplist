class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :content, null: false
      t.text :notes
      t.boolean :is_done, null: false, default: false
      t.references :list, index: true, foreign_key: true
    end
  end
end
