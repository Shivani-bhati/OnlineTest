class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.string :choice
      t.boolean :is_correct
      t.belongs_to :question, foreign_key: true

      t.timestamps
    end
  end
end
